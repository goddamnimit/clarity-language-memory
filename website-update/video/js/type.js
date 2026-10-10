// Kinetic typography. Every word is a DOM element whose opacity, offset and blur
// are set from the master clock on each frame; no CSS animation is involved.
import { COPY, SITE_URL } from './timeline.js';
import { easeIn, easeOut, span } from './util.js';

const MOTION = {
  headline: { stagger: 0.17, rise: 0.95 },
  caption: { stagger: 0.075, rise: 0.75 },
  sub: { stagger: 0.035, rise: 0.8 },
  eyebrow: { stagger: 0, rise: 0.6 },
  brand: { stagger: 0.22, rise: 0.95 },
};
const EXIT = 0.5;

function el(tag, className, text) {
  const node = document.createElement(tag);
  if (className) node.className = className;
  if (text !== undefined) node.textContent = text;
  return node;
}

/** Turn "one *gentle* step|at a time." into lines of word spans. */
function buildWords(block, text) {
  const units = [];
  for (const lineText of text.split('|')) {
    const line = el('span', 'copy__line');
    let emphasised = false;
    for (const part of lineText.split('*')) {
      for (const word of part.split(' ').filter(Boolean)) {
        const unit = el('span', emphasised ? 'copy__word is-em' : 'copy__word', word);
        line.append(unit, ' ');
        units.push(unit);
      }
      emphasised = !emphasised;
    }
    block.append(line);
  }
  return units;
}

// The same mark the site's own "Download on the App Store" button uses.
const STORE_GLYPH = 'M788 341c-6 5-108 62-108 190 0 149 130 201 134 203-1 3-21 72-69 142-43 62-87 123-155 123s-86-40-164-40c-76 0-104 41-166 41s-105-38-150-94C77 842 34 740 34 644c0-369 293-520 458-520 74 0 136 28 185 75l46 47 65-66c17-17 46-13 57 10 6 10 7 22 5 34-8 39-62 118-62 118zM492 0c-46 0-88 29-103 72-3 8-5 17-5 25 0 6 1 12 3 18 40-14 68-52 68-96C455 8 473 0 492 0z';

function storeButton() {
  const svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
  svg.setAttribute('viewBox', '0 0 814 1000');
  svg.setAttribute('aria-hidden', 'true');
  const path = document.createElementNS('http://www.w3.org/2000/svg', 'path');
  path.setAttribute('d', STORE_GLYPH);
  svg.append(path);
  const button = el('div', 'brand__store');
  button.append(svg, el('span', '', 'Download on the App Store'));
  return button;
}

function buildBrand(block) {
  const mark = el('div', 'brand__mark', 'Clarity');
  mark.append(el('span', '', '.'));
  const line = el('div', 'brand__line');
  line.append(
    el('span', '', 'Free on the App Store'),
    el('span', 'brand__dot', ' \u00b7 '),
    el('span', '', 'iPhone, iPad and Apple TV'),
  );
  const units = [
    mark,
    line,
    storeButton(),
    el('div', 'brand__url', SITE_URL),
    el('div', 'brand__note', 'Android coming soon'),
  ];
  block.append(...units);
  return units;
}

export function createType(layer) {
  const entries = COPY.map((line) => {
    const block = el('div', `copy copy--${line.kind} copy--${line.layout}`);
    let units;
    if (line.kind === 'brand') {
      units = buildBrand(block);
    } else if (line.kind === 'eyebrow') {
      units = [el('span', 'eyebrow', line.text)];
      block.append(units[0]);
    } else {
      units = buildWords(block, line.text);
    }
    block.style.visibility = 'hidden';
    layer.append(block);
    return { ...line, block, units, shown: false };
  });

  function update(t) {
    for (const entry of entries) {
      const [t0, t1] = entry.at;
      const shown = t >= t0 && t <= t1;
      if (shown !== entry.shown) {
        entry.block.style.visibility = shown ? 'visible' : 'hidden';
        entry.shown = shown;
      }
      if (!shown) continue;
      const { stagger, rise } = MOTION[entry.kind];
      const leaving = easeIn(span(t, t1 - EXIT, t1));
      entry.units.forEach((unit, i) => {
        const begin = t0 + i * stagger;
        const arriving = easeOut(span(t, begin, begin + rise));
        const blur = (1 - arriving) * 14 + leaving * 8;
        unit.style.opacity = (arriving * (1 - leaving)).toFixed(3);
        unit.style.transform = `translate3d(0, ${((1 - arriving) * 26 - leaving * 10).toFixed(2)}px, 0)`;
        unit.style.filter = blur > 0.05 ? `blur(${blur.toFixed(2)}px)` : 'none';
      });
    }
  }

  return { update };
}
