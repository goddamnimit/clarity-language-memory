// Writes website-update/video/captions.vtt from the film's own copy list and
// checks that the page transcript carries every line, so the three never drift.
import { readFileSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { CAPTIONS, DURATION } from "../../website-update/video/js/timeline.js";

const video = resolve(dirname(fileURLToPath(import.meta.url)), "../../website-update/video");
const stamp = (seconds) => {
  const whole = Math.floor(seconds);
  const millis = Math.round((seconds - whole) * 1000);
  return `00:${String(Math.floor(whole / 60)).padStart(2, "0")}:${String(whole % 60).padStart(2, "0")}.${String(millis).padStart(3, "0")}`;
};

const cues = CAPTIONS.map((cue, i) => `${i + 1}\n${stamp(cue.start)} --> ${stamp(Math.min(cue.end, DURATION))}\n${cue.text}`);
writeFileSync(resolve(video, "captions.vtt"), `WEBVTT\n\n${cues.join("\n\n")}\n`);

const page = readFileSync(resolve(video, "index.html"), "utf8").replace(/&amp;/g, "&");
const missing = CAPTIONS.filter((cue) => !page.includes(`<li>${cue.text}</li>`));
const shortest = Math.min(...CAPTIONS.map((cue) => cue.end - cue.start));
console.log(`captions.vtt: ${CAPTIONS.length} cues, shortest on screen ${shortest.toFixed(1)}s`);
if (missing.length) {
  console.error("Transcript in index.html is missing:", missing.map((cue) => cue.text));
  process.exit(1);
}
console.log("transcript in index.html matches every cue");
