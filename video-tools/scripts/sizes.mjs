// Reports what the video page transfers, using the request list recorded by
// scripts/test.mjs. Text files are shown as Netlify would send them (Brotli or
// gzip); fonts and the poster are already compressed and are counted as-is.
import { readFileSync, readdirSync, statSync } from "node:fs";
import { dirname, extname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { brotliCompressSync, gzipSync } from "node:zlib";

const tools = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const site = resolve(tools, "../website-update");
const results = JSON.parse(readFileSync(resolve(tools, "out/test/results.json"), "utf8"));
const TEXT = new Set([".html", ".js", ".css", ".vtt"]);

function measure(paths) {
  let raw = 0;
  let gzip = 0;
  let brotli = 0;
  for (const path of new Set(paths)) {
    const file = join(site, path.endsWith("/") ? `${path}index.html` : path);
    const bytes = readFileSync(file);
    raw += bytes.length;
    if (TEXT.has(extname(file))) {
      gzip += gzipSync(bytes, { level: 9 }).length;
      brotli += brotliCompressSync(bytes).length;
    } else {
      gzip += bytes.length;
      brotli += bytes.length;
    }
  }
  return { files: new Set(paths).size, raw, gzip, brotli };
}

const kb = (bytes) => `${(bytes / 1024).toFixed(1)} KB`;
const show = (label, m) => console.log(`${label}: ${m.files} files, ${kb(m.raw)} raw, ${kb(m.gzip)} gzip, ${kb(m.brotli)} Brotli`);

show("Video page, everything it loads", measure(results.chromium.direct.requests));
for (const [engine, report] of Object.entries(results)) {
  show(`Home page before scrolling to the video (${engine})`, measure(report.desktop.beforeScroll.videoRequests));
}

let folder = 0;
const walk = (dir) => {
  for (const name of readdirSync(dir)) {
    const path = join(dir, name);
    if (statSync(path).isDirectory()) walk(path);
    else folder += statSync(path).size;
  }
};
walk(join(site, "video"));
console.log(`website-update/video on disk: ${kb(folder)}`);
