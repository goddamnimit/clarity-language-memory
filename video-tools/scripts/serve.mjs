// Minimal static file server for local preview and tests. Serves the deploy
// folder exactly as Netlify would: plain files, no build step.
//   node scripts/serve.mjs [port]
import { createReadStream, existsSync, statSync } from "node:fs";
import { createServer } from "node:http";
import { dirname, extname, join, normalize, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "../../website-update");
const port = Number(process.argv[2] ?? 8787);

const TYPES = {
  ".html": "text/html; charset=utf-8",
  ".js": "text/javascript; charset=utf-8",
  ".css": "text/css; charset=utf-8",
  ".json": "application/json",
  ".woff2": "font/woff2",
  ".jpg": "image/jpeg",
  ".png": "image/png",
  ".svg": "image/svg+xml",
  ".vtt": "text/vtt; charset=utf-8",
  ".txt": "text/plain; charset=utf-8",
  ".md": "text/markdown; charset=utf-8",
};

export function startServer(listenPort = port) {
  const server = createServer((request, response) => {
    const pathname = decodeURIComponent(new URL(request.url, "http://localhost").pathname);
    // /__work/ exposes tooling scratch files (stills for social images) to local pages only.
    const base = pathname.startsWith("/__work/") ? resolve(root, "../video-tools/out/social") : root;
    let file = normalize(join(base, pathname.replace(/^\/__work/, "")));
    if (!file.startsWith(base)) {
      response.writeHead(403).end();
      return;
    }
    if (existsSync(file) && statSync(file).isDirectory()) file = join(file, "index.html");
    if (!existsSync(file)) {
      response.writeHead(404, { "Content-Type": "text/plain" }).end("Not found");
      return;
    }
    response.writeHead(200, {
      "Content-Type": TYPES[extname(file)] ?? "application/octet-stream",
      "Content-Length": statSync(file).size,
      "Cache-Control": "no-store",
    });
    createReadStream(file).pipe(response);
  });
  return new Promise((done) => server.listen(listenPort, "127.0.0.1", () => done(server)));
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  await startServer();
  console.log(`Serving ${root} at http://127.0.0.1:${port}/`);
}
