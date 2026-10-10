// Bundle the three.js classes the film imports into one minified ES module.
// Run once after `npm install`; the output is committed with the site.
import { build } from "esbuild";
import { copyFileSync, readFileSync, statSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const tools = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const vendor = resolve(tools, "../website-update/video/vendor");
const version = JSON.parse(readFileSync(resolve(tools, "node_modules/three/package.json"), "utf8")).version;

await build({
  entryPoints: [resolve(tools, "scripts/three-entry.js")],
  outfile: resolve(vendor, "three.min.js"),
  bundle: true,
  minify: true,
  format: "esm",
  target: "es2020",
  legalComments: "none",
  banner: { js: `/* three.js r${version.split(".")[1]} (MIT). Subset bundle; see three.LICENSE.txt */` },
});
copyFileSync(resolve(tools, "node_modules/three/LICENSE"), resolve(vendor, "three.LICENSE.txt"));
console.log(`three ${version} -> vendor/three.min.js ${statSync(resolve(vendor, "three.min.js")).size} bytes`);
