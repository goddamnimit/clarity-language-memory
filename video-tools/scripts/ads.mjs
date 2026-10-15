// Renders the Apple-style Instagram spots in ../ads with a generated beat:
//   node scripts/ads.mjs                    -> every video and still
//   node scripts/ads.mjs videos hero,spin   -> those videos only
//   node scripts/ads.mjs stills
// Output: ../social/instagram/ad-*.mp4 (1080 x 1920) and ad-*.jpg (1080 x 1350).
import { spawn } from "node:child_process";
import { mkdirSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { chromium } from "playwright";
import { startServer } from "./serve.mjs";

const tools = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const out = resolve(tools, "../social/instagram");
const work = resolve(tools, "out/ads");
mkdirSync(out, { recursive: true });
mkdirSync(work, { recursive: true });
const PORT = 8798;
const FPS = 30;
const [mode, ids] = process.argv.slice(2);
const wanted = (id) => !ids || ids.split(",").includes(id);

// Each video names its music: chord set and whether the drums start at once.
const VIDEOS = [
  { id: "hero", music: { chords: 0, drumsFrom: 2.4 } },
  { id: "spin", music: { chords: 1, drumsFrom: 2.4 } },
  { id: "trio", music: { chords: 2, drumsFrom: 0 } },
  { id: "numbers", music: { chords: 3, drumsFrom: 0 } },
  { id: "promise", music: { chords: 0, drumsFrom: 0 } },
];

const STILLS = [
  { id: "hero", t: 8.0 },
  { id: "spin", t: 3.9 },
  { id: "trio", t: 9.4 },
  { id: "numbers", t: 2.0, name: "numbers-18" },
  { id: "numbers", t: 6.8, name: "numbers-free" },
  { id: "promise", t: 6.4 },
];

// ── Music: 100 bpm, four-bar chord loop, soft kick, clap, hats, bass, arpeggio and pad ──
const CHORDS = [
  [[60, 64, 67, 71], [57, 60, 64, 67], [53, 57, 60, 64], [55, 59, 62, 67]],
  [[53, 57, 60, 64], [48, 55, 60, 64], [50, 53, 57, 62], [46, 53, 58, 62]],
  [[62, 66, 69, 73], [59, 62, 66, 69], [55, 59, 62, 66], [57, 61, 64, 69]],
  [[57, 60, 64, 67], [53, 57, 60, 65], [48, 55, 60, 64], [55, 59, 62, 67]],
];
const ARP = [0, 2, 1, 3, 2, 1, 3, 2, 0, 2, 1, 3, 2, 3, 1, 2];

function music(file, seconds, { chords, drumsFrom }, endCardAt) {
  const rate = 44100;
  const beat = 0.6;
  const n = Math.round(seconds * rate);
  const left = new Float32Array(n);
  const right = new Float32Array(n);
  const hz = (midi) => 440 * 2 ** ((midi - 69) / 12);
  let seed = 7;
  const noise = () => ((seed = (seed * 16807) % 2147483647) / 2147483647) * 2 - 1;
  const add = (start, length, voice, pan = 0) => {
    const from = Math.max(0, Math.round(start * rate));
    const to = Math.min(n, from + Math.round(length * rate));
    for (let i = from; i < to; i++) {
      const v = voice((i - from) / rate);
      left[i] += v * (1 - pan) * 0.5 + v * 0.5;
      right[i] += v * (1 + pan) * 0.5 + v * 0.5;
    }
  };
  const set = CHORDS[chords];
  const drumsUntil = endCardAt;
  for (let b = 0; b * beat < seconds; b++) {
    const t = b * beat;
    const chord = set[Math.floor(b / 4) % 4];
    const drums = t >= drumsFrom - 0.001 && t < drumsUntil;
    if (drums) {
      add(t, 0.35, (x) => Math.sin(2 * Math.PI * (45 * x + (75 / 28) * (1 - Math.exp(-28 * x)))) * Math.exp(-x * 11) * 0.55);
      if (b % 2 === 1) {
        let low = 0;
        add(t, 0.2, (x) => {
          low += (noise() - low) * 0.35;
          return low * Math.exp(-x * 26) * 0.32;
        });
      }
      for (const off of [beat / 2]) {
        let last = 0;
        add(t + off, 0.05, (x) => {
          const v = noise();
          const high = v - last;
          last = v;
          return high * Math.exp(-x * 90) * 0.08;
        }, 0.3);
      }
      add(t, beat * 0.9, (x) => Math.sin(2 * Math.PI * (hz(chord[0] - 24)) * x) * Math.min(1, x * 80) * Math.exp(-x * 3) * 0.3);
    }
    for (let s = 0; s < 4; s++) {
      const step = (b % 4) * 4 + s;
      const f = hz(chord[ARP[step]] + 12);
      add(t + (s * beat) / 4, 0.4, (x) => (Math.sin(2 * Math.PI * f * x) + 0.25 * Math.sin(4 * Math.PI * f * x)) * Math.min(1, x * 300) * Math.exp(-x * 9) * 0.085, s % 2 ? 0.35 : -0.35);
    }
    if (b % 4 === 0) {
      const length = Math.min(beat * 4 + 0.6, seconds - t);
      add(t, length, (x) => {
        const env = Math.min(1, x / 0.5) * Math.min(1, (length - x) / 0.6);
        return chord.reduce((sum, m) => sum + Math.sin(2 * Math.PI * hz(m) * x), 0) * 0.035 * env;
      });
    }
  }
  let peak = 0;
  for (let i = 0; i < n; i++) {
    const fade = Math.min(1, i / (rate * 0.05), (n - i) / (rate * 1.2));
    left[i] = Math.tanh(left[i] * 1.2) * fade;
    right[i] = Math.tanh(right[i] * 1.2) * fade;
    peak = Math.max(peak, Math.abs(left[i]), Math.abs(right[i]));
  }
  const gain = 0.89 / peak;
  const data = Buffer.alloc(44 + n * 4);
  data.write("RIFF", 0);
  data.writeUInt32LE(36 + n * 4, 4);
  data.write("WAVEfmt ", 8);
  data.writeUInt32LE(16, 16);
  data.writeUInt16LE(1, 20);
  data.writeUInt16LE(2, 22);
  data.writeUInt32LE(rate, 24);
  data.writeUInt32LE(rate * 4, 28);
  data.writeUInt16LE(4, 32);
  data.writeUInt16LE(16, 34);
  data.write("data", 36);
  data.writeUInt32LE(n * 4, 40);
  for (let i = 0; i < n; i++) {
    data.writeInt16LE(Math.round(left[i] * gain * 32767), 44 + i * 4);
    data.writeInt16LE(Math.round(right[i] * gain * 32767), 46 + i * 4);
  }
  writeFileSync(file, data);
}

// ── Rendering ─────────────────────────────────────────────────────────────
const server = await startServer(PORT);
const browser = await chromium.launch({ args: ["--use-angle=metal", "--enable-gpu", "--ignore-gpu-blocklist", "--enable-unsafe-swiftshader"] });

async function open(id, width, height) {
  const page = await browser.newPage({ viewport: { width, height }, deviceScaleFactor: 1 });
  await page.goto(`http://127.0.0.1:${PORT}/__ads/?spot=${id}`);
  const duration = await page.evaluate(async () => (await window.clarityAd).duration);
  const seek = (t) => page.evaluate(async (time) => (await window.clarityAd).seek(time), t);
  return { page, seek, duration };
}

async function video({ id, music: plan }) {
  const { page, seek, duration } = await open(id, 1080, 1920);
  const wav = resolve(work, `music-${id}.wav`);
  music(wav, duration, plan, duration - 2.6);
  const file = resolve(out, `ad-${id}.mp4`);
  const ffmpeg = spawn("ffmpeg", [
    "-y", "-loglevel", "error",
    "-f", "image2pipe", "-framerate", String(FPS), "-c:v", "png", "-i", "-",
    "-i", wav,
    "-map", "0:v", "-map", "1:a", "-t", String(duration),
    "-c:v", "libx264", "-preset", "slow", "-crf", "17", "-profile:v", "high", "-pix_fmt", "yuv420p", "-r", String(FPS),
    "-bsf:v", "h264_metadata=colour_primaries=1:transfer_characteristics=1:matrix_coefficients=1",
    "-c:a", "aac", "-b:a", "192k", "-movflags", "+faststart", file,
  ], { stdio: ["pipe", "inherit", "inherit"] });
  const done = new Promise((ok, fail) => ffmpeg.on("close", (code) => (code === 0 ? ok() : fail(new Error(`ffmpeg ${code}`)))));
  const frames = Math.round(duration * FPS);
  for (let i = 0; i < frames; i++) {
    await seek(i / FPS);
    const png = await page.screenshot({ type: "png", timeout: 120000 });
    if (!ffmpeg.stdin.write(png)) await new Promise((drained) => ffmpeg.stdin.once("drain", drained));
  }
  ffmpeg.stdin.end();
  await done;
  await page.close();
  console.log(`ad-${id}.mp4 (${duration} s)`);
}

async function still({ id, t, name }) {
  const { page, seek } = await open(id, 1080, 1350);
  await seek(t);
  await page.screenshot({ path: resolve(out, `ad-${name ?? id}.jpg`), type: "jpeg", quality: 92 });
  await page.close();
  console.log(`ad-${name ?? id}.jpg`);
}

try {
  if (!mode || mode === "stills") for (const item of STILLS) if (wanted(item.id)) await still(item);
  if (!mode || mode === "videos") for (const item of VIDEOS) if (wanted(item.id)) await video(item);
} finally {
  await browser.close();
  server.close();
}
