// Frame-accurate capture of the film with Playwright's Chromium.
//   node scripts/capture.mjs stills 3,12.2,24   -> out/stills/*.png
//   node scripts/capture.mjs poster 12.2        -> website-update/video/poster.jpg
//   node scripts/capture.mjs video [fps]        -> out/clarity-1080p<fps>.mp4
// The page is opened with ?capture, which exposes window.clarityFilm.seek(t);
// each frame is a pure function of t, so the result is identical on every run.
import { spawn } from "node:child_process";
import { mkdirSync, renameSync, statSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { chromium } from "playwright";
import { startServer } from "./serve.mjs";

const tools = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const out = resolve(tools, "out");
const [mode = "stills", argument] = process.argv.slice(2);
const PORT = 8791;

const server = await startServer(PORT);
const browser = await chromium.launch({
  args: ["--use-angle=metal", "--enable-gpu", "--ignore-gpu-blocklist", "--enable-unsafe-swiftshader"],
});
const viewport = mode === "poster" ? { width: 1280, height: 720 } : { width: 1920, height: 1080 };
const page = await browser.newPage({ viewport, deviceScaleFactor: 1 });
page.on("pageerror", (error) => console.error("page error:", error.message));
page.on("console", (message) => {
  if (message.type() === "error") console.error("console error:", message.text());
});
await page.goto(`http://127.0.0.1:${PORT}/video/?capture`);
const duration = await page.evaluate(async () => (await window.clarityFilm).duration);
const seek = (t) => page.evaluate(async (time) => (await window.clarityFilm).seek(time), t);

// A busy machine can stall one screenshot; the frame is a pure function of its
// time, so it is safe to seek again and retry.
async function frameAt(t) {
  for (let attempt = 1; ; attempt++) {
    try {
      await seek(t);
      return await page.screenshot({ type: "png", timeout: 120000 });
    } catch (error) {
      if (attempt === 4) throw error;
      console.log(`retrying frame at ${t.toFixed(3)}s (attempt ${attempt + 1})`);
    }
  }
}

try {
  if (mode === "stills") {
    mkdirSync(resolve(out, "stills"), { recursive: true });
    for (const t of argument.split(",").map(Number)) {
      await seek(t);
      const name = `t${t.toFixed(2).padStart(5, "0")}.png`;
      await page.screenshot({ path: resolve(out, "stills", name) });
      console.log(name);
    }
  } else if (mode === "poster") {
    await seek(Number(argument));
    const file = resolve(tools, "../website-update/video/poster.jpg");
    await page.screenshot({ path: file, type: "jpeg", quality: 82 });
    console.log(`poster.jpg ${statSync(file).size} bytes`);
  } else if (mode === "video") {
    mkdirSync(out, { recursive: true });
    const fps = Number(argument ?? 60);
    const file = resolve(out, `clarity-1080p${fps}.mp4`);
    const partial = `${file}.partial.mp4`;
    const frames = Math.round(duration * fps);
    const ffmpeg = spawn(
      "ffmpeg",
      [
        "-y", "-loglevel", "error",
        "-f", "image2pipe", "-framerate", String(fps), "-c:v", "png", "-i", "-",
        "-c:v", "libx264", "-preset", "slow", "-crf", "15", "-profile:v", "high",
        "-pix_fmt", "yuv420p",
        "-bsf:v", "h264_metadata=colour_primaries=1:transfer_characteristics=1:matrix_coefficients=1",
        "-movflags", "+faststart", "-an", partial,
      ],
      { stdio: ["pipe", "inherit", "inherit"] },
    );
    const finished = new Promise((done, fail) => {
      ffmpeg.on("close", (code) => (code === 0 ? done() : fail(new Error(`ffmpeg exited with ${code}`))));
    });
    const started = Date.now();
    for (let i = 0; i < frames; i++) {
      const png = await frameAt(i / fps);
      if (!ffmpeg.stdin.write(png)) await new Promise((drained) => ffmpeg.stdin.once("drain", drained));
      if (i % (fps * 5) === 0) console.log(`frame ${i}/${frames} (${((Date.now() - started) / 1000).toFixed(0)}s)`);
    }
    ffmpeg.stdin.end();
    await finished;
    // Only a complete render replaces the previous master.
    renameSync(partial, file);
    console.log(`${file} ${statSync(file).size} bytes, ${frames} frames at ${fps} fps`);
  } else {
    throw new Error(`unknown mode: ${mode}`);
  }
} finally {
  await browser.close();
  server.close();
}
