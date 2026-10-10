// videowright 0.1.1 ships its browser entry files (src/cli/entry) but not the
// src/index.js they import. This adds a one-line shim that points at the built
// library, so `videowright render` can start. Re-run after `npm install`.
import { existsSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const shim = resolve(dirname(fileURLToPath(import.meta.url)), "../node_modules/videowright/src/index.js");
if (existsSync(shim)) {
  console.log("videowright shim already present");
} else {
  writeFileSync(shim, 'export * from "../dist/index.js";\n');
  console.log("videowright shim written");
}
