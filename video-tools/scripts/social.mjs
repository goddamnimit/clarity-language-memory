// Builds the Instagram set from the site's own film and fonts:
//   node scripts/social.mjs            -> ../social/instagram/{profile.jpg, post-*.jpg, reel-*.mp4}
//   node scripts/social.mjs reels 6-promise   -> one reel only
// Posts are HTML pages screenshotted at 1080 x 1350. Reels are either vertical crops of
// the film (copy layer hidden) under a text header, or kinetic type drawn as a pure
// function of time. Each gets a short generated music bed.
import { execFileSync, spawn } from "node:child_process";
import { mkdirSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { chromium } from "playwright";
import { startServer } from "./serve.mjs";

const tools = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const out = resolve(tools, "../social/instagram");
const work = resolve(tools, "out/social");
mkdirSync(out, { recursive: true });
mkdirSync(work, { recursive: true });
const PORT = 8796;
const ORIGIN = `http://127.0.0.1:${PORT}`;
const only = process.argv[2];
const onlyId = process.argv[3];

const server = await startServer(PORT);
const browser = await chromium.launch({ args: ["--use-angle=metal", "--enable-gpu", "--ignore-gpu-blocklist", "--enable-unsafe-swiftshader"] });

// ── Film access with the copy layer hidden ────────────────────────────────
async function openFilm(width, height, softEdges = false) {
  const page = await browser.newPage({ viewport: { width, height }, deviceScaleFactor: 1 });
  await page.goto(`${ORIGIN}/video/?capture`);
  await page.evaluate(async () => { await window.clarityFilm; });
  await page.addStyleTag({ content: ".type-layer { display: none !important; }" });
  if (softEdges) {
    await page.addStyleTag({ content: "body::after{content:'';position:fixed;inset:0;z-index:99999;pointer-events:none;background:linear-gradient(#F7F3EE,rgba(247,243,238,0) 90px,rgba(247,243,238,0) calc(88% - 90px),#F7F3EE 88%)}" });
  }
  const seek = (t) => page.evaluate(async (time) => (await window.clarityFilm).seek(time), t);
  return { page, seek };
}

// ── Stills for the posts ───────────────────────────────────────────────────
const STILLS = {
  phone: { t: 12.4, clip: { x: 1640, y: 60, width: 860, height: 1500 } },
  dial: { t: 25.4, clip: { x: 1500, y: 150, width: 1300, height: 1320 } },
  languages: { t: 31.2, clip: { x: 200, y: 0, width: 2480, height: 1500 } },
  caregivers: { t: 42.5, clip: { x: 200, y: 110, width: 2480, height: 1180 } },
  tv: { t: 49.3, clip: { x: 330, y: 20, width: 2220, height: 1400 } },
};

async function stills() {
  const { page, seek } = await openFilm(2880, 1620);
  for (const [name, { t, clip }] of Object.entries(STILLS)) {
    await seek(t);
    await page.screenshot({ path: resolve(work, `still-${name}.png`), clip });
  }
  await page.close();
}

// ── Posts ──────────────────────────────────────────────────────────────────
const POSTS = [
  { id: "1-welcome", label: "Clarity: Language & Memory", head: "Words, one <em>gentle</em> step<br>at a time.", sub: "Language and memory practice, at your own pace.", still: "phone", stillHeight: 640 },
  { id: "2-private", label: "Our promise", head: "Free. No ads.<br><em>Never sells your data.</em>", sub: "No accounts. No tracking. What you practice stays on your device.", points: ["Free on the App Store", "Works fully offline", "Nothing to unlock"] },
  { id: "3-languages", label: "16 languages", head: "<em>16 languages,</em> one app.", sub: "Including right-to-left layouts for Farsi and Arabic.", still: "languages", stillHeight: 620 },
  { id: "4-adapts", label: "Adapts quietly", head: "Difficulty adapts <em>quietly</em><br>in the background.", sub: "No settings to fuss with. A short Baseline Assessment sets a starting level.", still: "dial", stillHeight: 560 },
  { id: "5-caregivers", label: "For caregivers", head: "Built for <em>caregivers</em> too.", sub: "PIN-protected Caregiver Mode, plain-language insights, a PDF progress report and gentle reminders.", still: "caregivers", stillHeight: 470 },
  { id: "6-together", label: "Apple TV", head: "<em>Together</em> on Apple TV.", sub: "Two Player Mode: take turns with one remote.", still: "tv", stillHeight: 560 },
];

const fontFaces = ["fraunces-300.woff2|Fraunces|300|normal", "fraunces-300-italic.woff2|Fraunces|300|italic", "fraunces-500.woff2|Fraunces|500|normal", "inter-400.woff2|Inter|400|normal", "inter-500.woff2|Inter|500|normal", "inter-600.woff2|Inter|600|normal"]
  .map((line) => line.split("|"))
  .map(([file, family, weight, style]) => `@font-face{font-family:${family};font-weight:${weight};font-style:${style};src:url(${ORIGIN}/video/fonts/${file}) format("woff2")}`)
  .join("");

const baseCss = `${fontFaces}
*{box-sizing:border-box;margin:0}
body{width:1080px;background:#F7F3EE;color:#2B3A4A;font-family:Inter,sans-serif;overflow:hidden;position:relative}
.ring{position:absolute;left:50%;border:2px solid rgba(123,168,152,.22);border-radius:50%;transform:translate(-50%,-50%)}
.glow{position:absolute;left:50%;width:1300px;height:1300px;transform:translate(-50%,-50%);background:radial-gradient(circle,rgba(123,168,152,.2),rgba(123,168,152,0) 68%)}
.label{display:inline-block;padding:13px 30px;border-radius:100px;background:#EBF4F1;border:2px solid rgba(123,168,152,.3);color:#5F9282;font-weight:600;font-size:26px;letter-spacing:.08em;text-transform:uppercase}
h1{font-family:Fraunces,serif;font-weight:300;letter-spacing:-.03em;line-height:1.08}
h1 em{font-style:italic;color:#5F9282}
.sub{color:#566878;line-height:1.45}
.mark{font-family:Fraunces,serif;font-weight:500;letter-spacing:-.02em}.mark span{color:#7BA898}
.url{font-weight:500;color:#566878}`;

function postHtml(post) {
  const rings = [620, 900, 1180].map((d) => `<div class="ring" style="top:${post.still ? 880 : 700}px;width:${d}px;height:${d}px"></div>`).join("");
  const still = post.still
    ? `<img src="${ORIGIN}/__work/still-${post.still}.png" style="display:block;margin:34px auto 0;height:${post.stillHeight}px;max-width:1040px;object-fit:contain;-webkit-mask-image:radial-gradient(ellipse 60% 60% at center,#000 78%,transparent 100%);mask-image:radial-gradient(ellipse 60% 60% at center,#000 78%,transparent 100%)">`
    : `<ul style="list-style:none;padding:0;margin:64px auto 0;display:flex;flex-direction:column;gap:22px;align-items:center">${post.points.map((p) => `<li style="background:#fff;border:2px solid rgba(43,58,74,.07);border-radius:100px;padding:24px 48px;font-size:36px;font-weight:500;box-shadow:0 8px 32px rgba(43,58,74,.08)">${p}</li>`).join("")}</ul>`;
  return `<!doctype html><meta charset="utf-8"><style>${baseCss}body{height:1350px}</style>
<div class="glow" style="top:${post.still ? 880 : 700}px"></div>${rings}
<div style="position:relative;padding:84px 70px 0;text-align:center">
  <div class="label">${post.label}</div>
  <h1 style="font-size:${post.still ? 88 : 98}px;margin-top:38px">${post.head}</h1>
  <p class="sub" style="font-size:34px;margin:28px auto 0;max-width:880px">${post.sub}</p>
  ${still}
</div>
<div style="position:absolute;left:0;right:0;bottom:54px;text-align:center">
  <span class="mark" style="font-size:46px">Clarity<span>.</span></span>
  <span class="url" style="font-size:28px;margin-left:22px">claritylanguageandmemory.com</span>
</div>`;
}

async function posts() {
  const page = await browser.newPage({ viewport: { width: 1080, height: 1350 }, deviceScaleFactor: 1 });
  for (const post of POSTS) {
    await page.setContent(postHtml(post), { waitUntil: "networkidle" });
    await page.evaluate(() => document.fonts.ready);
    await page.screenshot({ path: resolve(out, `post-${post.id}.jpg`), type: "jpeg", quality: 92 });
    console.log(`post-${post.id}.jpg`);
  }
  await page.close();
}

// ── Reels ──────────────────────────────────────────────────────────────────
const REEL = { width: 1080, height: 1920, header: 430, fps: 30, filmHeight: 1490 };
const END_SECONDS = 3;
// Film reels: `centre` is where the crop sits across the 16:9 frame. A `span` shows a
// wider slice of the frame as a band (its empty bottom strip trimmed), with `foot` text underneath it.
// Type reels: every element with data-at fades up at that second.
const REELS = [
  { id: "1-session", from: 6.6, to: 17.9, centre: 0.7167, label: "The app", head: "Five questions <em>at a time.</em>", sub: "Tap an answer, or say it aloud." },
  { id: "2-languages", from: 27.0, to: 35.9, centre: 0.5, label: "16 languages", head: "<em>16 languages,</em> one app.", sub: "Farsi and Arabic read right to left. So does Clarity." },
  { id: "3-adapts", from: 18.3, to: 25.8, centre: 0.735, music: 1, label: "Adapts quietly", head: "Difficulty adapts <em>quietly.</em>", sub: "A short Baseline Assessment sets a starting level." },
  { id: "4-caregivers", from: 37.6, to: 45.9, centre: 0.5, span: 0.78, music: 2, label: "For caregivers", head: "Built for <em>caregivers</em> too.", foot: "PIN-protected Caregiver Mode.<br>Plain-language insights and a PDF progress report.<br>Gentle reminders and a Home Screen widget." },
  { id: "5-together", from: 47.4, to: 52.8, centre: 0.5, span: 0.82, music: 3, label: "Apple TV", head: "<em>Together</em> on Apple TV.", foot: "Two Player Mode:<br>take turns with one remote." },
  {
    id: "6-promise", seconds: 8.4, music: 2,
    html: `<div class="label" data-at="0.2">Our promise</div>
<h1 style="font-size:150px;margin-top:70px"><span data-at="0.7">Free.</span><br><span data-at="1.8">No ads.</span><br><span data-at="2.9">No accounts.</span></h1>
<h1 style="font-size:104px;margin-top:60px" data-at="4.2"><em>Never sells your data.</em></h1>
<p class="sub" style="font-size:44px;margin-top:56px" data-at="5.6">What you practice stays on your device.</p>`,
  },
  {
    id: "7-inside", seconds: 9.6, music: 1,
    html: `<div class="label" data-at="0.2">What's inside</div>
<h1 style="font-size:132px;margin-top:50px" data-at="0.6">All of it, <em>free.</em></h1>
<ul class="pills" style="margin-top:80px">${["16 languages", "18,000+ practice questions", "Works fully offline", "Caregiver Mode with a PIN", "Two Player Mode on Apple TV", "Nothing to unlock"].map((p, i) => `<li data-at="${(1.6 + i * 1.0).toFixed(1)}">${p}</li>`).join("")}</ul>`,
  },
  {
    id: "8-gentle", seconds: 7.6, music: 3,
    html: `<div class="label" data-at="0.2">Clarity: Language &amp; Memory</div>
<h1 style="font-size:158px;margin-top:80px">${["Words,", "one", "<em>gentle</em>", "step", "at", "a", "time."].map((w, i) => `<span data-at="${(0.7 + i * 0.5).toFixed(1)}">${w}</span>${i === 1 || i === 3 ? "<br>" : " "}`).join("")}</h1>
<p class="sub" style="font-size:46px;margin:70px auto 0;max-width:820px" data-at="4.8">Language and memory practice, at your own pace.</p>`,
  },
];

const rings = (top) => `<div class="glow" style="top:${top}px"></div>${[620, 900, 1180].map((d) => `<div class="ring" style="top:${top}px;width:${d}px;height:${d}px"></div>`).join("")}`;

function headerHtml(reel) {
  return `<!doctype html><meta charset="utf-8"><style>${baseCss}body{height:${REEL.header}px;background:#F7F3EE}</style>
<div style="padding:150px 60px 0;text-align:center">
  <div class="label">${reel.label}</div>
  <h1 style="font-size:84px;margin-top:26px">${reel.head}</h1>
  <p class="sub" style="font-size:34px;margin-top:16px">${reel.sub}</p>
</div>`;
}

// Full-height backdrop for a band reel: heading above the film band, `foot` below it.
function bandHtml(reel, bandTop, bandHeight) {
  return `<!doctype html><meta charset="utf-8"><style>${baseCss}body{height:${REEL.height}px}</style>
<div style="position:absolute;left:0;right:0;top:250px;padding:0 60px;text-align:center">
  <div class="label">${reel.label}</div>
  <h1 style="font-size:100px;margin-top:34px">${reel.head}</h1>
</div>
<p class="sub" style="position:absolute;left:0;right:0;top:${bandTop + bandHeight + 10}px;padding:0 60px;text-align:center;font-size:42px;line-height:1.55">${reel.foot}</p>`;
}

function typeHtml(reel) {
  return `<!doctype html><meta charset="utf-8"><style>${baseCss}body{height:${REEL.height}px}
.pills{list-style:none;padding:0;display:flex;flex-direction:column;gap:26px;align-items:center}
.pills li{background:#fff;border:2px solid rgba(43,58,74,.07);border-radius:100px;padding:28px 54px;font-size:44px;font-weight:500;box-shadow:0 8px 32px rgba(43,58,74,.08)}
h1 span{display:inline-block}</style>
<div id="rings" style="position:absolute;inset:0">${rings(960)}</div>
<div style="position:absolute;inset:0;padding:0 70px;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center">${reel.html}</div>
<script>
const smooth = (x) => { x = Math.min(1, Math.max(0, x)); return x * x * x * (x * (x * 6 - 15) + 10); };
const parts = [...document.querySelectorAll("[data-at]")].map((el) => [el, Number(el.dataset.at)]);
const ringBox = document.getElementById("rings");
window.draw = (t) => {
  for (const [el, at] of parts) {
    const k = smooth((t - at) / 0.7);
    el.style.opacity = k;
    el.style.transform = "translateY(" + ((1 - k) * 46).toFixed(2) + "px)";
  }
  ringBox.style.transform = "scale(" + (1 + t * 0.012).toFixed(4) + ")";
};
window.draw(0);
</script>`;
}

function endCardHtml() {
  return `<!doctype html><meta charset="utf-8"><style>${baseCss}body{height:1920px}</style>
${rings(960)}
<div style="position:absolute;inset:0;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center">
  <div class="mark" style="font-size:210px;line-height:1">Clarity<span>.</span></div>
  <p style="font-size:44px;font-weight:500;margin-top:30px">Language &amp; memory practice</p>
  <p style="font-size:40px;margin-top:54px;padding:28px 60px;border-radius:100px;background:#2B3A4A;color:#fff;font-weight:600">Free on the App Store</p>
  <p class="url" style="font-size:38px;margin-top:44px">claritylanguageandmemory.com</p>
  <p class="sub" style="font-size:30px;margin-top:26px">No ads. No accounts. Never sells your data.</p>
</div>`;
}

function music(file, seconds, variant = 0) {
  // A soft generated bed: four slow chords of plain sine tones with a gentle arpeggio.
  // The variant picks the chords, the arpeggio order and the bar length.
  const py = `
import math, struct, wave, sys
rate=44100; dur=float(sys.argv[2]); n=int(rate*dur)
sets=[
 ([[261.63,329.63,392.00,493.88],[220.00,261.63,329.63,392.00],[174.61,261.63,329.63,440.00],[196.00,246.94,293.66,392.00]],[0,2,1,3,2,1,3,2],3.6),
 ([[174.61,220.00,261.63,349.23],[130.81,196.00,261.63,329.63],[146.83,220.00,293.66,349.23],[116.54,174.61,233.08,293.66]],[0,1,2,3,2,1,2,3],3.0),
 ([[146.83,220.00,293.66,369.99],[123.47,185.00,246.94,293.66],[98.00,196.00,246.94,293.66],[110.00,164.81,220.00,277.18]],[3,2,1,0,1,2,3,1],4.0),
 ([[110.00,220.00,261.63,329.63],[87.31,174.61,220.00,261.63],[130.81,196.00,261.63,329.63],[98.00,196.00,246.94,293.66]],[0,3,2,3,1,3,2,3],3.3),
]
chords,order,target=sets[int(sys.argv[3])]
bar=dur/ max(1, round(dur/target)); buf=[0.0]*n
for i in range(n):
    t=i/rate; k=int(t/bar)%4; local=t-int(t/bar)*bar
    env=min(1,local/0.9)*min(1,(bar-local)/0.9)
    pad=sum(math.sin(2*math.pi*f*t)*(0.5 if j else 0.7) for j,f in enumerate(chords[k]))/4
    step=int(local/(bar/8)); note=chords[k][order[step%8]]*2
    pl=local-step*(bar/8); pluck=math.sin(2*math.pi*note*t)*math.exp(-pl*5.5)*0.22
    buf[i]=(pad*0.42*env+pluck)*min(1,t/1.2)*min(1,(dur-t)/1.8)
w=wave.open(sys.argv[1],'w'); w.setnchannels(1); w.setsampwidth(2); w.setframerate(rate)
w.writeframes(b''.join(struct.pack('<h',int(max(-1,min(1,x))*26000)) for x in buf)); w.close()`;
  writeFileSync(resolve(work, "music.py"), py);
  execFileSync("python3", ["-I", resolve(work, "music.py"), file, String(seconds), String(variant)]);
}

const even = (n) => 2 * Math.round(n / 2);

// Encodes one reel: piped frames, optional backdrop under them, end card faded over the top.
function encoder(reel, bodySeconds, backdrop, filmTop) {
  const total = bodySeconds + END_SECONDS;
  const wav = resolve(work, `music-${reel.id}.wav`);
  music(wav, total, reel.music ?? 0);
  const still = (path) => ["-loop", "1", "-framerate", String(REEL.fps), "-t", String(total), "-i", path];
  const body = backdrop
    ? `[0:v]tpad=stop_mode=clone:stop_duration=${END_SECONDS}[film];[1:v][film]overlay=0:${filmTop}[body];`
    : `[0:v]tpad=stop_mode=clone:stop_duration=${END_SECONDS}[body];`;
  const card = backdrop ? 2 : 1;
  const ffmpeg = spawn("ffmpeg", [
    "-y", "-loglevel", "error",
    "-f", "image2pipe", "-framerate", String(REEL.fps), "-c:v", "png", "-i", "-",
    ...(backdrop ? still(backdrop) : []),
    ...still(resolve(work, "endcard.png")),
    "-i", wav,
    "-filter_complex",
    body +
      `[${card}:v]format=rgba,fade=t=in:st=${(bodySeconds - 0.5).toFixed(2)}:d=0.6:alpha=1[card];` +
      `[body][card]overlay=0:0,format=yuv420p[v];` +
      `[${card + 1}:a]aecho=0.8:0.7:90|180:0.25|0.18,lowpass=f=3200,volume=11dB,alimiter=limit=0.9[a]`,
    "-map", "[v]", "-map", "[a]", "-t", String(total),
    "-c:v", "libx264", "-preset", "slow", "-crf", "17", "-profile:v", "high", "-r", String(REEL.fps),
    "-bsf:v", "h264_metadata=colour_primaries=1:transfer_characteristics=1:matrix_coefficients=1",
    "-c:a", "aac", "-b:a", "160k", "-movflags", "+faststart", resolve(out, `reel-${reel.id}.mp4`),
  ], { stdio: ["pipe", "inherit", "inherit"] });
  const done = new Promise((ok, fail) => ffmpeg.on("close", (code) => (code === 0 ? ok() : fail(new Error(`ffmpeg ${code}`)))));
  const push = async (png) => {
    if (!ffmpeg.stdin.write(png)) await new Promise((drained) => ffmpeg.stdin.once("drain", drained));
  };
  const finish = async () => {
    ffmpeg.stdin.end();
    await done;
    console.log(`reel-${reel.id}.mp4 (${total.toFixed(1)} s)`);
  };
  return { push, finish };
}

async function reels() {
  const card = await browser.newPage({ viewport: { width: REEL.width, height: REEL.height }, deviceScaleFactor: 1 });
  await card.setContent(endCardHtml(), { waitUntil: "networkidle" });
  await card.evaluate(() => document.fonts.ready);
  await card.screenshot({ path: resolve(work, "endcard.png") });

  for (const reel of REELS) {
    if (onlyId && !onlyId.split(",").includes(reel.id)) continue;

    if (reel.html) {
      await card.setViewportSize({ width: REEL.width, height: REEL.height });
      await card.setContent(typeHtml(reel), { waitUntil: "networkidle" });
      await card.evaluate(() => document.fonts.ready);
      const { push, finish } = encoder(reel, reel.seconds);
      const frames = Math.round(reel.seconds * REEL.fps);
      for (let i = 0; i < frames; i++) {
        await card.evaluate((t) => window.draw(t), i / REEL.fps);
        await push(await card.screenshot({ type: "png" }));
      }
      await finish();
      continue;
    }

    const filmWidth = even(reel.span ? REEL.width / reel.span : (REEL.filmHeight * 16) / 9);
    const filmHeight = even((filmWidth * 9) / 16);
    const shown = reel.span ? even(filmHeight * 0.88) : filmHeight;
    const filmTop = reel.span ? 640 : REEL.header;
    const backdrop = resolve(work, `header-${reel.id}.png`);
    await card.setViewportSize({ width: REEL.width, height: REEL.height });
    await card.setContent(
      reel.span ? bandHtml(reel, filmTop, shown) : `${headerHtml(reel)}<style>body{height:${REEL.height}px !important}</style>`,
      { waitUntil: "networkidle" },
    );
    await card.evaluate(() => document.fonts.ready);
    await card.screenshot({ path: backdrop });

    const { page, seek } = await openFilm(filmWidth, filmHeight, Boolean(reel.span));
    const x = Math.round(Math.min(filmWidth - REEL.width, Math.max(0, reel.centre * filmWidth - REEL.width / 2)));
    const filmSeconds = reel.to - reel.from;
    const { push, finish } = encoder(reel, filmSeconds, backdrop, filmTop);
    const frames = Math.round(filmSeconds * REEL.fps);
    for (let i = 0; i < frames; i++) {
      await seek(reel.from + i / REEL.fps);
      await push(await page.screenshot({ type: "png", timeout: 120000, clip: { x, y: 0, width: REEL.width, height: shown } }));
    }
    await finish();
    await page.close();
  }
  await card.close();
}

try {
  if (!only || only === "posts") {
    await stills();
    await posts();
  }
  if (!only || only === "reels") await reels();
} finally {
  await browser.close();
  server.close();
}
