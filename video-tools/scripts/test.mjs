// Browser checks for the embedded film, run against a local static server.
//   node scripts/test.mjs            -> out/test/results.json + screenshots
// Covers Chromium, WebKit and Firefox: lazy/visible-only autoplay, controls,
// keyboard, seeking, mobile and desktop layout, reduced motion, and a full
// list of network requests.
import { mkdirSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { chromium, firefox, webkit } from "playwright";
import { startServer } from "./serve.mjs";

const tools = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const out = resolve(tools, "out/test");
mkdirSync(out, { recursive: true });

const PORT = 8792;
const ORIGIN = `http://127.0.0.1:${PORT}`;
const HOME = `${ORIGIN}/index.html`;
const ENGINES = {
  chromium: { type: chromium, launch: { args: ["--use-angle=metal", "--enable-gpu", "--ignore-gpu-blocklist", "--enable-unsafe-swiftshader"] } },
  webkit: { type: webkit, launch: {} },
  firefox: { type: firefox, launch: {} },
};
const only = process.argv[2];

const server = await startServer(PORT);
const results = {};

const sleep = (ms) => new Promise((done) => setTimeout(done, ms));
async function until(read, accept, timeout = 20000) {
  const started = Date.now();
  let value;
  while (Date.now() - started < timeout) {
    value = await read();
    if (accept(value)) return value;
    await sleep(150);
  }
  return value;
}

function track(page) {
  const requests = [];
  page.on("request", (request) => requests.push(request.url()));
  const errors = [];
  page.on("pageerror", (error) => errors.push(error.message));
  page.on("console", (message) => {
    if (message.type() === "error") errors.push(message.text());
  });
  return { requests, errors };
}

const state = (frame) =>
  frame.evaluate(() => {
    const player = document.getElementById("player");
    return {
      started: player.dataset.started === "true",
      playing: player.dataset.playing === "true",
      error: player.dataset.error === "true",
      time: Number(document.getElementById("seek").value),
      muted: document.getElementById("mute").getAttribute("aria-pressed") === "true",
      posterShown: getComputedStyle(document.querySelector(".poster")).display !== "none",
      startShown: getComputedStyle(document.getElementById("start")).display !== "none",
    };
  });

const videoFrame = (page) => page.frames().find((frame) => /\/video\/(index\.html)?$/.test(new URL(frame.url() || "about:blank").pathname));

async function openVideo(page) {
  await page.locator("#video .video-frame").scrollIntoViewIfNeeded();
  await page.evaluate(() => document.querySelector("#video .video-frame").scrollIntoView({ block: "center" }));
  return until(() => videoFrame(page), Boolean);
}

async function desktop(name, browser) {
  const report = {};
  const context = await browser.newContext({ viewport: { width: 1440, height: 900 } });
  const page = await context.newPage();
  const { requests, errors } = track(page);
  await page.goto(HOME, { waitUntil: "load" });
  await sleep(1500);

  report.beforeScroll = {
    videoRequests: requests.filter((url) => url.includes("/video/")).map((url) => url.replace(ORIGIN, "")),
    filmStartedOffscreen: Boolean(videoFrame(page)) && (await state(videoFrame(page))).started,
  };
  report.horizontalScroll = await page.evaluate(() => document.documentElement.scrollWidth > window.innerWidth);
  report.heroButtonTarget = await page.locator(".hero-actions .btn-secondary").first().getAttribute("href");

  const frame = await openVideo(page);
  const playing = await until(() => state(frame), (s) => s.playing && s.time > 0.5);
  report.autoplayWhenVisible = playing.playing && playing.time > 0.5;
  report.autoplayMuted = playing.muted;

  const box = await page.locator("#video iframe").boundingBox();
  report.iframeAspect = Number((box.width / box.height).toFixed(4));
  const stage = await frame.locator("#stage").boundingBox();
  report.stageAspect = Number((stage.width / stage.height).toFixed(4));

  // Pause and play with the on-screen button.
  await frame.locator("#stage").hover();
  await frame.locator("#toggle").click();
  const paused = await state(frame);
  await sleep(500);
  const stillPaused = await state(frame);
  report.pauseButton = !paused.playing && Math.abs(stillPaused.time - paused.time) < 0.01;
  await frame.locator("#toggle").click();
  report.playButton = (await until(() => state(frame), (s) => s.playing)).playing;

  // Seek with the slider.
  await frame.locator("#seek").evaluate((input) => {
    input.value = "30";
    input.dispatchEvent(new Event("input", { bubbles: true }));
  });
  await sleep(400);
  const sought = await state(frame);
  report.seekSlider = sought.time >= 30 && sought.time < 32;

  // Restart and mute buttons.
  await frame.locator("#restart").click();
  await sleep(400);
  const restarted = await state(frame);
  report.restartButton = restarted.playing && restarted.time < 1.5;
  await frame.locator("#mute").click();
  report.muteButton = (await state(frame)).muted === false;
  await frame.locator("#mute").click();

  // Keyboard, with focus inside the player but not on a control.
  await frame.evaluate(() => {
    document.activeElement?.blur();
    window.focus();
  });
  await frame.locator("#stage").click({ position: { x: 20, y: 20 } });
  const afterClick = await state(frame);
  await page.keyboard.press("Space");
  await sleep(450);
  const afterSpace = await state(frame);
  report.keySpace = afterSpace.playing !== afterClick.playing;
  if (afterSpace.playing) {
    await page.keyboard.press("Space");
    await sleep(450);
  }
  const base = (await state(frame)).time;
  await page.keyboard.press("ArrowRight");
  await sleep(450);
  const forward = (await state(frame)).time;
  await page.keyboard.press("ArrowLeft");
  await sleep(450);
  const back = (await state(frame)).time;
  report.keyArrows = Math.abs(forward - base - 5) < 0.2 && Math.abs(back - base) < 0.2;
  report.keyArrowTimes = { base, forward, back, playing: (await state(frame)).playing };
  await page.keyboard.press("m");
  report.keyM = (await state(frame)).muted === false;
  await page.keyboard.press("m");
  await page.keyboard.press("r");
  await sleep(400);
  const viaR = await state(frame);
  report.keyR = viaR.playing && viaR.time < 1.5;

  // Stills through the iframe at one moment per scene.
  await page.keyboard.press("Space");
  for (const t of [4, 12.4, 25.4, 35.3, 45.4, 50.6, 55, 59.5]) {
    await frame.locator("#seek").evaluate((input, value) => {
      input.value = String(value);
      input.dispatchEvent(new Event("input", { bubbles: true }));
    }, t);
    await sleep(700);
    await page.locator("#video .video-frame").screenshot({ path: resolve(out, `${name}-desktop-t${String(t).padStart(4, "0")}.png`) });
  }

  // Leaving the viewport pauses it.
  await frame.locator("#toggle").click();
  await until(() => state(frame), (s) => s.playing);
  await page.evaluate(() => window.scrollTo(0, 0));
  report.pausesOffscreen = !(await until(() => state(frame), (s) => !s.playing, 6000)).playing;

  // Glyph sheet: every native name and the Farsi item, drawn with the film's fonts.
  const sheet = await frame.evaluate(async () => {
    const { LANGUAGES } = await import("./js/scenes/04-languages.js");
    const { FARSI } = await import("./js/farsi-item.js");
    const lines = [...LANGUAGES, FARSI.title, FARSI.instructions, ...FARSI.options, `${FARSI.questionLabel} 1 ${FARSI.ofLabel} 5`];
    const canvas = document.createElement("canvas");
    canvas.width = 1400;
    canvas.height = 80 + Math.ceil(lines.length / 2) * 64;
    const ctx = canvas.getContext("2d");
    ctx.fillStyle = "#F7F3EE";
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = "#2B3A4A";
    ctx.font = '500 34px Inter, "Clarity Scripts"';
    lines.forEach((line, i) => ctx.fillText(line, 40 + (i % 2) * 680, 70 + Math.floor(i / 2) * 64));
    return canvas.toDataURL("image/png");
  });
  writeFileSync(resolve(out, `${name}-glyphs.png`), Buffer.from(sheet.split(",")[1], "base64"));

  report.errors = errors;
  report.requests = requests.map((url) => (url.startsWith(ORIGIN) ? url.replace(ORIGIN, "") : url));
  report.videoRequestsAllSameOrigin = requests.filter((url) => url.includes("/video/")).every((url) => url.startsWith(ORIGIN));
  report.crossOriginRequests = [...new Set(requests.filter((url) => !url.startsWith(ORIGIN)).map((url) => new URL(url).origin))];
  await context.close();
  return report;
}

async function direct(name, browser) {
  const context = await browser.newContext({ viewport: { width: 1280, height: 720 } });
  const page = await context.newPage();
  const { requests, errors } = track(page);
  await page.goto(`${ORIGIN}/video/`, { waitUntil: "load" });
  const playing = await until(() => state(page.mainFrame()), (s) => s.playing && s.time > 0.5);
  await sleep(1500);
  const report = {
    plays: playing.playing,
    errors,
    requests: requests.map((url) => (url.startsWith(ORIGIN) ? url.replace(ORIGIN, "") : url)),
    allSameOrigin: requests.every((url) => url.startsWith(ORIGIN)),
  };
  await context.close();
  return report;
}

async function mobile(name, browser) {
  const options = { viewport: { width: 390, height: 844 }, deviceScaleFactor: 3, hasTouch: true };
  if (name !== "firefox") options.isMobile = true;
  const context = await browser.newContext(options);
  const page = await context.newPage();
  const { errors } = track(page);
  await page.goto(HOME, { waitUntil: "load" });
  await sleep(800);
  const report = {};
  const frame = await openVideo(page);
  const playing = await until(() => state(frame), (s) => s.playing && s.time > 0.5);
  report.autoplay = playing.playing;
  report.horizontalScroll = await page.evaluate(() => document.documentElement.scrollWidth > window.innerWidth);
  const box = await page.locator("#video iframe").boundingBox();
  report.iframe = { width: Math.round(box.width), height: Math.round(box.height), aspect: Number((box.width / box.height).toFixed(4)) };
  await frame.locator("#stage").tap({ position: { x: 30, y: 30 } }).catch(() => frame.locator("#stage").click({ position: { x: 30, y: 30 } }));
  report.tapPauses = !(await until(() => state(frame), (s) => !s.playing, 4000)).playing;
  const sizes = {};
  for (const t of [4, 12.4, 35.3, 45.4, 59.5]) {
    await frame.locator("#seek").evaluate((input, value) => {
      input.value = String(value);
      input.dispatchEvent(new Event("input", { bubbles: true }));
    }, t);
    await sleep(700);
    sizes[t] = await frame.evaluate(() => {
      const visible = [...document.querySelectorAll(".copy--headline, .copy--caption, .copy--sub")].filter((node) => node.style.visibility === "visible");
      return visible.map((node) => {
        const word = node.querySelector(".copy__word");
        return { text: node.textContent.trim().replace(/\s+/g, " "), capHeightPx: Number(word.getBoundingClientRect().height.toFixed(1)) };
      });
    });
    await page.locator("#video .video-frame").screenshot({ path: resolve(out, `${name}-mobile-t${String(t).padStart(4, "0")}.png`) });
  }
  report.captionLineHeights = sizes;
  await page.screenshot({ path: resolve(out, `${name}-mobile-page.png`) });
  report.errors = errors;
  await context.close();
  return report;
}

async function reducedMotion(name, browser) {
  const context = await browser.newContext({ viewport: { width: 1440, height: 900 }, reducedMotion: "reduce" });
  const page = await context.newPage();
  const { errors } = track(page);
  await page.goto(HOME, { waitUntil: "load" });
  const frame = await openVideo(page);
  await sleep(3500);
  const idle = await state(frame);
  await page.locator("#video .video-frame").screenshot({ path: resolve(out, `${name}-reduced-motion.png`) });
  await frame.locator("#start").click();
  const afterPlay = await until(() => state(frame), (s) => s.playing && s.time > 0.3);
  const report = {
    matchesQuery: await frame.evaluate(() => matchMedia("(prefers-reduced-motion: reduce)").matches),
    noAutoplay: !idle.playing && !idle.started,
    posterShown: idle.posterShown,
    playButtonShown: idle.startShown,
    playsAfterClick: afterPlay.playing,
    errors,
  };
  await context.close();
  return report;
}

for (const [name, engine] of Object.entries(ENGINES)) {
  if (only && only !== name) continue;
  const report = {};
  let browser;
  try {
    browser = await engine.type.launch(engine.launch);
    report.version = browser.version();
    for (const [label, run] of Object.entries({ desktop, direct, mobile, reducedMotion })) {
      try {
        report[label] = await run(name, browser);
      } catch (error) {
        report[label] = { failed: error.message.split("\n")[0] };
      }
    }
  } catch (error) {
    report.failed = error.message.split("\n")[0];
  } finally {
    await browser?.close();
  }
  results[name] = report;
  console.log(name, JSON.stringify(report, (key, value) => (key === "requests" ? `${value.length} requests` : value), 1));
}

writeFileSync(resolve(out, only ? `results-${only}.json` : "results.json"), JSON.stringify(results, null, 2));
server.close();
