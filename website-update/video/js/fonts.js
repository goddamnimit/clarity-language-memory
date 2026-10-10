// Loads the vendored woff2 files through the FontFace API so both the DOM copy
// and the canvas-painted screens can use them. Nothing is fetched off-site.

const SCRIPTS = 'Clarity Scripts';

const FACES = [
  ['Fraunces', 'fraunces-300.woff2', { weight: '300' }],
  ['Fraunces', 'fraunces-300-italic.woff2', { weight: '300', style: 'italic' }],
  ['Fraunces', 'fraunces-500.woff2', { weight: '500' }],
  ['Inter', 'inter-400.woff2', { weight: '400' }],
  ['Inter', 'inter-500.woff2', { weight: '500' }],
  ['Inter', 'inter-600.woff2', { weight: '600' }],
  [SCRIPTS, 'noto-devanagari.woff2', { unicodeRange: 'U+0900-097F' }],
  [SCRIPTS, 'noto-gujarati.woff2', { unicodeRange: 'U+0A80-0AFF' }],
  [SCRIPTS, 'noto-gurmukhi.woff2', { unicodeRange: 'U+0A00-0A7F' }],
  [SCRIPTS, 'noto-arabic.woff2', { unicodeRange: 'U+0600-06FF, U+200C-200D, U+FB50-FDFF, U+FE70-FEFF' }],
  [SCRIPTS, 'noto-armenian.woff2', { unicodeRange: 'U+0530-058F' }],
  [SCRIPTS, 'noto-ethiopic.woff2', { unicodeRange: 'U+1200-137F' }],
  [SCRIPTS, 'noto-sc.woff2', { unicodeRange: 'U+666E, U+901A, U+8BDD' }],
  [SCRIPTS, 'noto-kr.woff2', { unicodeRange: 'U+AC00-D7AF' }],
  [SCRIPTS, 'noto-jp.woff2', { unicodeRange: 'U+65E5, U+672C, U+8A9E' }],
];

let pending = null;

/** Safe to call more than once; the files are requested a single time. */
export function loadFonts() {
  pending ??= Promise.all(
    FACES.map(async ([family, file, descriptors]) => {
      const source = new URL(`../fonts/${file}`, import.meta.url).href;
      const face = new FontFace(family, `url("${source}") format("woff2")`, {
        weight: family === SCRIPTS ? '400 600' : descriptors.weight,
        ...descriptors,
      });
      document.fonts.add(await face.load());
    }),
  );
  return pending;
}
