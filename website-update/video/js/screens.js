// Original recreations of Clarity's screens, painted onto 2D canvases that the
// device mockups use as textures. Every painter is a pure function of the clock.
import { FARSI } from './farsi-item.js';
import { PALETTE as C, easeInOut, easeOut, glide, lerp, mix, rgba, span, window01 } from './util.js';

const UI_FAMILY = 'Inter, "Clarity Scripts", sans-serif';
const ui = (weight, size) => `${weight} ${size}px ${UI_FAMILY}`;
const serif = (weight, size) => `${weight} ${size}px Fraunces, serif`;
const HAIRLINE = '#E6E1DA';

// Canvas shadows ignore the current transform, so painters scale them by hand.
let density = 1;

// ── Drawing primitives ─────────────────────────────────────────────────────

function roundedPath(ctx, x, y, w, h, r) {
  const radius = Math.min(r, w / 2, h / 2);
  ctx.beginPath();
  ctx.moveTo(x + radius, y);
  ctx.arcTo(x + w, y, x + w, y + h, radius);
  ctx.arcTo(x + w, y + h, x, y + h, radius);
  ctx.arcTo(x, y + h, x, y, radius);
  ctx.arcTo(x, y, x + w, y, radius);
  ctx.closePath();
}

function box(ctx, x, y, w, h, r, { fill, stroke, lineWidth = 1.5, shadow, dash } = {}) {
  ctx.save();
  roundedPath(ctx, x, y, w, h, r);
  if (fill) {
    if (shadow) {
      ctx.shadowColor = shadow.color;
      ctx.shadowBlur = shadow.blur * density;
      ctx.shadowOffsetY = (shadow.y ?? 0) * density;
    }
    ctx.fillStyle = fill;
    ctx.fill();
    ctx.shadowColor = 'transparent';
  }
  if (stroke) {
    if (dash) ctx.setLineDash(dash);
    ctx.strokeStyle = stroke;
    ctx.lineWidth = lineWidth;
    ctx.stroke();
  }
  ctx.restore();
}

const CARD_SHADOW = { color: rgba(C.ink, 0.1), blur: 22, y: 6 };
const card = (ctx, x, y, w, h, r = 24) => box(ctx, x, y, w, h, r, { fill: C.white, shadow: CARD_SHADOW });

function disc(ctx, x, y, r, fill, stroke, lineWidth = 1.5) {
  ctx.beginPath();
  ctx.arc(x, y, Math.max(r, 0), 0, Math.PI * 2);
  if (fill) {
    ctx.fillStyle = fill;
    ctx.fill();
  }
  if (stroke) {
    ctx.strokeStyle = stroke;
    ctx.lineWidth = lineWidth;
    ctx.stroke();
  }
}

function arc(ctx, x, y, r, from, to, color, lineWidth) {
  if (to <= from) return;
  ctx.beginPath();
  ctx.arc(x, y, r, from, to);
  ctx.strokeStyle = color;
  ctx.lineWidth = lineWidth;
  ctx.lineCap = 'round';
  ctx.stroke();
}

function text(ctx, value, x, y, font, color, align = 'left') {
  ctx.font = font;
  ctx.fillStyle = color;
  ctx.textAlign = align;
  ctx.textBaseline = 'alphabetic';
  ctx.fillText(value, x, y);
}

function wrap(ctx, value, maxWidth, font) {
  ctx.font = font;
  const lines = [];
  let line = '';
  for (const word of value.split(' ')) {
    const probe = line ? `${line} ${word}` : word;
    if (line && ctx.measureText(probe).width > maxWidth) {
      lines.push(line);
      line = word;
    } else {
      line = probe;
    }
  }
  lines.push(line);
  return lines;
}

/** Draws wrapped text and returns the baseline below the last line. */
function paragraph(ctx, value, x, y, maxWidth, lineHeight, font, color, align = 'left') {
  const lines = wrap(ctx, value, maxWidth, font);
  lines.forEach((line, i) => text(ctx, line, x, y + i * lineHeight, font, color, align));
  return y + lines.length * lineHeight;
}

function faded(ctx, alpha, draw) {
  if (alpha <= 0.003) return;
  ctx.save();
  ctx.globalAlpha *= alpha;
  draw();
  ctx.restore();
}

function tick(ctx, x, y, size, color, progress = 1) {
  if (progress <= 0) return;
  const points = [
    [x - size * 0.45, y + size * 0.02],
    [x - size * 0.12, y + size * 0.35],
    [x + size * 0.48, y - size * 0.32],
  ];
  const first = Math.min(1, progress * 2);
  const second = Math.max(0, progress * 2 - 1);
  ctx.beginPath();
  ctx.moveTo(points[0][0], points[0][1]);
  ctx.lineTo(lerp(points[0][0], points[1][0], first), lerp(points[0][1], points[1][1], first));
  if (second > 0) ctx.lineTo(lerp(points[1][0], points[2][0], second), lerp(points[1][1], points[2][1], second));
  ctx.strokeStyle = color;
  ctx.lineWidth = size * 0.2;
  ctx.lineCap = 'round';
  ctx.lineJoin = 'round';
  ctx.stroke();
}

/** A soft fingertip mark that lands at `at` and lifts shortly after. */
function touch(ctx, x, y, t, at, size = 22) {
  const presence = window01(t, at - 0.45, at + 0.5, 0.28);
  if (presence <= 0) return;
  const press = 1 - 0.2 * window01(t, at - 0.08, at + 0.3, 0.1);
  disc(ctx, x, y, size * press, rgba(C.ink, 0.16 * presence), rgba(C.ink, 0.3 * presence), 1.5);
}

function button(ctx, x, y, w, h, label, t, pressAt, size = 17) {
  const pressed = window01(t, pressAt - 0.05, pressAt + 0.5, 0.14);
  box(ctx, x, y, w, h, h / 2, { fill: mix(C.ink, C.sage, pressed) });
  text(ctx, label, x + w / 2, y + h / 2 + size * 0.35, ui(600, size), C.white, 'center');
}

function pill(ctx, x, y, label, size, color, fill, padding = 14, height = 28) {
  ctx.font = ui(600, size);
  const width = ctx.measureText(label).width + padding * 2;
  box(ctx, x, y, width, height, height / 2, { fill });
  text(ctx, label, x + padding, y + height / 2 + size * 0.36, ui(600, size), color);
}

function wordmark(ctx, x, y, size) {
  text(ctx, 'Clarity', x, y, serif(500, size), C.ink);
  const width = ctx.measureText('Clarity').width;
  text(ctx, '.', x + width, y, serif(500, size), C.sage);
}

// ── Clip playback ──────────────────────────────────────────────────────────

/**
 * Shows the clip that is current at time t, blending from the previous clip
 * while the new one enters. Clips are { from, paint, enter?, fade? }.
 */
function play(ctx, width, height, clips, t) {
  let i = 0;
  while (i + 1 < clips.length && clips[i + 1].from <= t) i++;
  const current = clips[i];
  const draw = (clip, dx = 0) => {
    ctx.save();
    ctx.translate(dx, 0);
    ctx.beginPath();
    ctx.rect(0, 0, width, height);
    ctx.clip();
    clip.paint(ctx, t);
    ctx.restore();
  };
  const progress = i > 0 ? span(t, current.from, current.from + (current.fade ?? 0.5)) : 1;
  if (progress >= 1) {
    draw(current);
    return;
  }
  const previous = clips[i - 1];
  const eased = easeInOut(progress);
  if (current.enter === 'slide' || current.enter === 'slide-back') {
    const direction = current.enter === 'slide' ? 1 : -1;
    draw(previous, -direction * width * eased);
    draw(current, direction * width * (1 - eased));
  } else {
    draw(previous);
    faded(ctx, eased, () => draw(current));
  }
}

function begin(device, t, clips, chrome) {
  const { ctx, points, density: scale } = device;
  density = scale;
  ctx.setTransform(scale, 0, 0, scale, 0, 0);
  ctx.globalAlpha = 1;
  ctx.direction = 'ltr';
  ctx.fillStyle = C.cream;
  ctx.fillRect(0, 0, points[0], points[1]);
  play(ctx, points[0], points[1], clips, t);
  if (chrome) chrome(ctx);
  device.texture.needsUpdate = true;
}

function phoneChrome(ctx) {
  box(ctx, 195 - 56, 14, 112, 32, 16, { fill: '#10171E' });
  box(ctx, 195 - 67, 829, 134, 5, 2.5, { fill: rgba(C.ink, 0.28) });
}

export const paintPhone = (device, t, clips) => begin(device, t, clips, phoneChrome);
export const paintTablet = (device, t, clips) => begin(device, t, clips);
export const paintTelevision = (device, t, clips) => begin(device, t, clips);

// ── iPhone screens (390 x 844 points) ──────────────────────────────────────

export function phoneHome({ tapAt = 999 } = {}) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 390, 844);
    wordmark(ctx, 26, 96, 24);
    text(ctx, 'Good to see you!', 26, 152, serif(300, 38), C.ink);

    card(ctx, 24, 178, 342, 196);
    text(ctx, 'TODAY', 46, 214, ui(600, 13), C.sageText);
    text(ctx, "Today's practice", 46, 247, ui(600, 24), C.ink);
    text(ctx, '5 questions', 46, 274, ui(400, 17), C.inkLight);
    button(ctx, 46, 298, 298, 56, 'Start', t, tapAt, 20);

    card(ctx, 24, 392, 342, 92);
    disc(ctx, 70, 438, 25, rgba(C.gold, 0.18));
    text(ctx, '6', 70, 447, serif(500, 26), C.gold, 'center');
    text(ctx, 'day streak', 108, 434, ui(600, 19), C.ink);
    text(ctx, 'Personal best: 9 days', 108, 458, ui(400, 15.5), C.inkLight);

    const sections = [
      ['Language', C.sage],
      ['Cognition', C.lavender],
      ['Functional Skills', C.gold],
    ];
    sections.forEach(([label, color], i) => {
      const x = 24 + i * 118;
      card(ctx, x, 502, 106, 128, 22);
      disc(ctx, x + 30, 540, 13, rgba(color, 0.25));
      disc(ctx, x + 30, 540, 6, color);
      wrap(ctx, label, 86, ui(600, 15)).forEach((line, n) => text(ctx, line, x + 14, 584 + n * 20, ui(600, 15), C.ink));
    });

    touch(ctx, 195, 325, t, tapAt);
  };
}

function microphone(ctx, x, y, t, { listen, heard }) {
  const active = listen ? window01(t, listen[0], listen[1], 0.3) : 0;
  if (active > 0) {
    for (let k = 0; k < 2; k++) {
      const phase = ((t - listen[0]) * 0.8 + k * 0.5) % 1;
      disc(ctx, x, y, 30 + phase * 30, null, rgba(C.sage, (1 - phase) * 0.55 * active), 2);
    }
  }
  box(ctx, x - 30, y - 30, 60, 60, 30, {
    fill: mix(C.white, C.sage, active),
    stroke: mix(HAIRLINE, C.sage, active),
    shadow: { color: rgba(C.ink, 0.08), blur: 12, y: 3 },
  });
  const glyph = mix(C.ink, C.white, active);
  box(ctx, x - 6, y - 15, 12, 21, 6, { fill: glyph });
  arc(ctx, x, y - 1, 11, 0.12 * Math.PI, 0.88 * Math.PI, glyph, 2.2);
  ctx.beginPath();
  ctx.moveTo(x, y + 10);
  ctx.lineTo(x, y + 16);
  ctx.strokeStyle = glyph;
  ctx.lineWidth = 2.2;
  ctx.lineCap = 'round';
  ctx.stroke();

  if (heard) {
    faded(ctx, window01(t, heard.at, heard.until, 0.3), () => {
      const label = `“${heard.word}”`;
      ctx.font = ui(500, 17);
      const width = ctx.measureText(label).width + 36;
      box(ctx, x - width / 2, y - 92, width, 38, 19, { fill: C.sagePale, stroke: rgba(C.sage, 0.4) });
      text(ctx, label, x, y - 67, ui(500, 17), C.ink, 'center');
    });
  }
}

/**
 * One question page.
 * question: { label, step, steps, prompt, options, correct, note?, rtl? }
 * action:   { answerAt, by: 'tap' | 'voice', mic?: { listen?, heard? } }
 */
const OPTION_PITCH = 86;

export function phoneQuestion(question, action) {
  const rtl = Boolean(question.rtl);
  return (ctx, t) => {
    ctx.save();
    ctx.direction = rtl ? 'rtl' : 'ltr';
    const lead = rtl ? 366 : 24;
    const align = rtl ? 'right' : 'left';
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 390, 844);

    const chevron = rtl ? 362 : 28;
    const sign = rtl ? -1 : 1;
    ctx.beginPath();
    ctx.moveTo(chevron + 8 * sign, 70);
    ctx.lineTo(chevron, 78);
    ctx.lineTo(chevron + 8 * sign, 86);
    ctx.strokeStyle = C.inkLight;
    ctx.lineWidth = 2.4;
    ctx.lineCap = 'round';
    ctx.lineJoin = 'round';
    ctx.stroke();
    text(ctx, question.label, rtl ? 340 : 50, 84, ui(500, 17), C.inkLight, align);

    const gap = question.steps > 8 ? 3 : 6;
    const segment = (342 - gap * (question.steps - 1)) / question.steps;
    for (let i = 0; i < question.steps; i++) {
      const x = rtl ? 366 - segment - i * (segment + gap) : 24 + i * (segment + gap);
      box(ctx, x, 104, segment, 6, 3, { fill: i <= question.step ? C.sage : rgba(C.ink, 0.1) });
    }

    const promptFont = rtl ? ui(500, 26) : serif(300, 36);
    const promptEnd = paragraph(ctx, question.prompt, lead, 176, 342, rtl ? 46 : 44, promptFont, C.ink, align);

    const glow = easeOut(span(t, action.answerAt + 0.08, action.answerAt + 0.75));
    const top = Math.max(promptEnd - 8, 262);
    question.options.forEach((option, i) => {
      const y = top + i * OPTION_PITCH;
      const hit = i === question.correct ? glow : 0;
      box(ctx, 24, y, 342, 72, 22, {
        fill: mix(C.white, C.sagePale, hit),
        stroke: mix(HAIRLINE, C.sage, hit),
        lineWidth: 1.5 + hit,
        shadow: hit > 0 ? { color: rgba(C.sage, 0.6 * hit), blur: 28 * hit } : { color: rgba(C.ink, 0.05), blur: 8, y: 2 },
      });
      text(ctx, option, rtl ? 344 : 46, y + 45, ui(500, 24), C.ink, align);
      if (hit > 0) {
        const cx = rtl ? 56 : 334;
        disc(ctx, cx, y + 36, 15 * hit, C.sage);
        tick(ctx, cx, y + 36, 16, C.white, hit);
      }
    });

    const optionsEnd = top + question.options.length * OPTION_PITCH;
    if (question.note) {
      faded(ctx, easeOut(span(t, action.answerAt + 0.6, action.answerAt + 1.3)), () => {
        paragraph(ctx, question.note, lead, optionsEnd + 20, 342, 25, ui(400, 17.5), C.inkLight, align);
      });
    }
    if (action.mic) microphone(ctx, 195, 762, t, action.mic);
    if (action.by === 'tap') {
      touch(ctx, rtl ? 150 : 240, top + question.correct * OPTION_PITCH + 38, t, action.answerAt);
    }
    ctx.restore();
  };
}

export function phoneComplete({ from }) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 390, 844);
    const progress = glide(t, from + 0.15, from + 1.1);
    arc(ctx, 195, 318, 86, 0, Math.PI * 2, rgba(C.ink, 0.08), 12);
    arc(ctx, 195, 318, 86, -Math.PI / 2, -Math.PI / 2 + Math.PI * 2 * progress, C.sage, 12);
    text(ctx, '5 of 5', 195, 332, serif(500, 40), C.ink, 'center');
    text(ctx, 'Great effort!', 195, 484, serif(300, 36), C.ink, 'center');
    text(ctx, 'Session complete', 195, 520, ui(400, 18), C.inkLight, 'center');
    for (let i = 0; i < 5; i++) {
      const pop = easeOut(span(t, from + 0.5 + i * 0.12, from + 0.9 + i * 0.12));
      const x = 195 + (i - 2) * 44;
      disc(ctx, x, 584, 15 * pop, C.sagePale, rgba(C.sage, 0.5 * pop));
      tick(ctx, x, 584, 14, C.sage, pop);
    }
  };
}

export function phoneBaseline({ tapAt }) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 390, 844);
    wordmark(ctx, 26, 96, 24);
    card(ctx, 24, 170, 342, 440, 28);
    pill(ctx, 48, 204, 'FIRST RUN', 12.5, C.sageText, C.sagePale, 14, 30);
    text(ctx, 'Baseline', 48, 296, serif(300, 40), C.ink);
    text(ctx, 'Assessment', 48, 342, serif(300, 40), C.ink);
    paragraph(ctx, 'A few short questions to find a comfortable starting level.', 48, 390, 290, 28, ui(400, 19), C.inkLight);
    button(ctx, 48, 520, 294, 58, 'Start Assessment', t, tapAt, 19);
    touch(ctx, 195, 548, t, tapAt);
  };
}

// The real widgets are dark tiles with an orange flame above the streak count.
const WIDGET = { top: '#2C2C2F', bottom: '#19191B', label: 'rgba(235, 235, 245, 0.6)', flame: '#FF9F3A', green: '#4CD964' };

function widgetTile(ctx, x, y, w, h) {
  const fill = ctx.createLinearGradient(0, y, 0, y + h);
  fill.addColorStop(0, WIDGET.top);
  fill.addColorStop(1, WIDGET.bottom);
  box(ctx, x, y, w, h, 30, { fill, shadow: { color: rgba(C.ink, 0.25), blur: 22, y: 8 } });
}

function flame(ctx, cx, cy, s) {
  ctx.beginPath();
  ctx.moveTo(cx - 0.05 * s, cy - s);
  ctx.bezierCurveTo(cx + 0.1 * s, cy - 0.45 * s, cx + 0.75 * s, cy - 0.3 * s, cx + 0.7 * s, cy + 0.35 * s);
  ctx.bezierCurveTo(cx + 0.65 * s, cy + 0.85 * s, cx + 0.3 * s, cy + s, cx, cy + s);
  ctx.bezierCurveTo(cx - 0.4 * s, cy + s, cx - 0.72 * s, cy + 0.75 * s, cx - 0.7 * s, cy + 0.3 * s);
  ctx.bezierCurveTo(cx - 0.68 * s, cy - 0.05 * s, cx - 0.45 * s, cy - 0.2 * s, cx - 0.42 * s, cy - 0.45 * s);
  ctx.bezierCurveTo(cx - 0.3 * s, cy - 0.3 * s, cx - 0.2 * s, cy - 0.2 * s, cx - 0.15 * s, cy - 0.05 * s);
  ctx.bezierCurveTo(cx - 0.2 * s, cy - 0.45 * s, cx - 0.2 * s, cy - 0.75 * s, cx - 0.05 * s, cy - s);
  ctx.fillStyle = WIDGET.flame;
  ctx.fill();
  ctx.beginPath();
  ctx.moveTo(cx, cy + 0.15 * s);
  ctx.bezierCurveTo(cx + 0.3 * s, cy + 0.45 * s, cx + 0.25 * s, cy + 0.8 * s, cx, cy + 0.8 * s);
  ctx.bezierCurveTo(cx - 0.25 * s, cy + 0.8 * s, cx - 0.3 * s, cy + 0.45 * s, cx, cy + 0.15 * s);
  ctx.fillStyle = WIDGET.bottom;
  ctx.fill();
}

/** Flame, streak count and label, centred on cx with the flame at cy. */
function streak(ctx, cx, cy, flameSize, numberSize) {
  flame(ctx, cx, cy, flameSize);
  text(ctx, '6', cx, cy + flameSize + numberSize * 0.95, ui(600, numberSize), C.white, 'center');
  text(ctx, 'day streak', cx, cy + flameSize + numberSize * 0.95 + 22, ui(400, 13.5), WIDGET.label, 'center');
}

/** An iPhone Home Screen with plain placeholder icons and the two Clarity widgets. */
export function phoneHomeScreen({ bannerIn, bannerOut, pulse }) {
  const tints = [C.sageLight, C.rose, C.lavender, C.gold, '#D5DCE2', C.sage, C.rose, C.sageLight, C.lavender, '#D5DCE2', C.gold, C.sage];
  return (ctx, t) => {
    const wallpaper = ctx.createLinearGradient(0, 0, 0, 844);
    wallpaper.addColorStop(0, '#DDEBE6');
    wallpaper.addColorStop(0.55, C.cream);
    wallpaper.addColorStop(1, '#F0DDD3');
    ctx.fillStyle = wallpaper;
    ctx.fillRect(0, 0, 390, 844);

    const ring = window01(t, pulse[0], pulse[1], 0.5) * (0.7 + 0.3 * Math.sin((t - pulse[0]) * 5));
    if (ring > 0) {
      box(ctx, 18, 152, 354, 174, 37, { stroke: rgba(C.sage, 0.9 * ring), lineWidth: 3.5 });
    }

    // Medium widget: streak beside today's exercise and the weekly goal.
    widgetTile(ctx, 26, 160, 338, 158);
    streak(ctx, 86, 206, 15, 40);
    box(ctx, 146, 184, 1.5, 110, 0.75, { fill: 'rgba(255, 255, 255, 0.1)' });
    text(ctx, "Today's exercise", 166, 200, ui(400, 14), WIDGET.label);
    text(ctx, 'Proverb Meaning', 166, 228, ui(600, 21), C.white);
    box(ctx, 166, 240, 94, 26, 13, { fill: 'rgba(76, 217, 100, 0.18)' });
    text(ctx, 'Cognition', 213, 258, ui(600, 13), WIDGET.green, 'center');
    text(ctx, 'WEEKLY GOAL', 166, 287, ui(600, 11), WIDGET.label);
    text(ctx, '4/5 sessions this week', 166, 305, ui(500, 14), C.white);
    text(ctx, 'Clarity', 195, 340, ui(500, 12.5), rgba(C.ink, 0.6), 'center');

    // Small widget: the streak alone.
    widgetTile(ctx, 26, 362, 158, 158);
    streak(ctx, 105, 404, 17, 46);
    text(ctx, 'Clarity', 105, 542, ui(500, 12.5), rgba(C.ink, 0.6), 'center');

    const icon = (x, y, n) => {
      box(ctx, x, y, 62, 62, 16, { fill: rgba(tints[n % 12], 0.8) });
      box(ctx, x + 11, y + 73, 40, 6, 3, { fill: rgba(C.ink, 0.13) });
    };
    [[210, 362], [302, 362], [210, 454], [302, 454]].forEach(([x, y], n) => icon(x, y, n));
    for (let i = 0; i < 4; i++) icon(26 + i * 92, 572, i + 4);
    box(ctx, 14, 716, 362, 96, 36, { fill: rgba(C.white, 0.55) });
    for (let i = 0; i < 4; i++) {
      box(ctx, 37 + i * 85, 733, 62, 62, 16, { fill: rgba(tints[(i * 5 + 2) % 12], 0.85) });
    }

    const banner = glide(t, bannerIn, bannerIn + 0.7) - glide(t, bannerOut, bannerOut + 0.6);
    if (banner > 0) {
      const y = lerp(-110, 58, banner);
      box(ctx, 14, y, 362, 88, 26, { fill: rgba(C.white, 0.98), shadow: { color: rgba(C.ink, 0.2), blur: 30, y: 10 } });
      box(ctx, 28, y + 18, 52, 52, 13, { fill: C.sage });
      text(ctx, 'C', 54, y + 55, serif(500, 32), C.white, 'center');
      text(ctx, 'Clarity: Language & Memory', 94, y + 37, ui(600, 14.5), C.ink);
      text(ctx, 'now', 360, y + 37, ui(400, 12.5), C.inkLight, 'right');
      text(ctx, 'Time for your Clarity practice.', 94, y + 60, ui(400, 14.5), C.inkLight);
    }
  };
}

// ── iPad screens (1180 x 820 points) ───────────────────────────────────────

function padlock(ctx, x, y, size, color, open = 0) {
  box(ctx, x - size * 0.42, y - size * 0.08, size * 0.84, size * 0.62, size * 0.14, { fill: color });
  ctx.save();
  ctx.translate(x + size * 0.26, y - size * 0.08);
  ctx.rotate(open * 0.7);
  arc(ctx, -size * 0.26, 0, size * 0.26, Math.PI, Math.PI * 2, color, size * 0.13);
  ctx.restore();
}

export function tabletPin({ digits, unlockAt }) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 1180, 820);
    const unlocked = glide(t, unlockAt, unlockAt + 0.35);
    disc(ctx, 590, 96, 38, mix(C.sagePale, C.sageLight, unlocked));
    padlock(ctx, 590, 94, 34, mix(C.ink, C.sage, unlocked), unlocked);
    text(ctx, 'Caregiver Mode', 590, 196, serif(300, 48), C.ink, 'center');
    text(ctx, 'Enter PIN', 590, 236, ui(500, 23), C.inkLight, 'center');
    digits.forEach((at, i) => {
      const x = 590 + (i - 1.5) * 48;
      const filled = easeOut(span(t, at, at + 0.2));
      disc(ctx, x, 284, 11, null, rgba(C.ink, 0.35), 2);
      disc(ctx, x, 284, 11 * filled, mix(C.ink, C.sage, unlocked));
    });
    const keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '', '0', ''];
    keys.forEach((key, i) => {
      if (!key) return;
      const x = 590 + ((i % 3) - 1) * 124;
      const y = 384 + Math.floor(i / 3) * 104;
      box(ctx, x - 42, y - 42, 84, 84, 42, { fill: C.white, stroke: HAIRLINE, shadow: { color: rgba(C.ink, 0.05), blur: 10, y: 3 } });
      text(ctx, key, x, y + 11, ui(500, 30), C.ink, 'center');
    });
  };
}

export function tabletInsights({ from }) {
  const bars = [0.55, 0.8, 0, 0.65, 1, 0.7, 0];
  const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
  const insights = [
    'Practice has been steady this week.',
    'Language exercises were practiced most often.',
    'Current streak: 6 days in a row.',
  ];
  const reminders = ['Daily reminder', 'Streak reminder', 'Welcome back'];

  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 1180, 820);
    text(ctx, 'Caregiver Mode', 48, 88, serif(300, 42), C.ink);
    box(ctx, 962, 52, 170, 42, 21, { fill: C.sagePale, stroke: rgba(C.sage, 0.35) });
    padlock(ctx, 990, 74, 17, C.sage, 0);
    text(ctx, 'PIN protected', 1008, 79, ui(600, 14.5), C.sageText);

    const panel = (index, x, y, w, h, draw) => {
      const reveal = easeOut(span(t, from + 0.15 + index * 0.28, from + 0.95 + index * 0.28));
      faded(ctx, reveal, () => {
        ctx.save();
        ctx.translate(0, (1 - reveal) * 22);
        card(ctx, x, y, w, h, 28);
        draw(reveal);
        ctx.restore();
      });
    };

    panel(0, 48, 124, 524, 318, (reveal) => {
      text(ctx, 'This week', 76, 170, ui(600, 21), C.inkLight);
      text(ctx, '5', 76, 250, serif(500, 64), C.ink);
      text(ctx, 'sessions', 124, 250, ui(400, 23), C.inkLight);
      bars.forEach((value, i) => {
        const x = 250 + i * 44;
        const height = Math.max(6, 150 * value * reveal);
        box(ctx, x, 392 - height, 30, height, 8, { fill: value ? (value === 1 ? C.sage : C.sageLight) : rgba(C.ink, 0.08) });
        text(ctx, days[i], x + 15, 420, ui(500, 15), C.inkLight, 'center');
      });
    });

    panel(1, 608, 124, 524, 318, () => {
      text(ctx, 'Insights', 636, 170, ui(600, 21), C.inkLight);
      let y = 226;
      for (const line of insights) {
        disc(ctx, 644, y - 8, 6, C.sage);
        y = paragraph(ctx, line, 668, y, 440, 31, ui(400, 23.5), C.ink) + 20;
      }
    });

    panel(2, 48, 466, 524, 306, () => {
      text(ctx, 'Progress report', 76, 512, ui(600, 21), C.inkLight);
      box(ctx, 76, 540, 96, 124, 12, { fill: C.sagePale, stroke: rgba(C.sage, 0.45) });
      for (let i = 0; i < 3; i++) box(ctx, 92, 562 + i * 14, 64 - i * 12, 5, 2.5, { fill: rgba(C.sage, 0.45) });
      text(ctx, 'PDF', 124, 642, ui(600, 17), C.sage, 'center');
      paragraph(ctx, 'A summary you can save or print.', 204, 574, 340, 31, ui(400, 23.5), C.ink);
      box(ctx, 204, 650, 210, 56, 28, { fill: C.ink });
      text(ctx, 'Export PDF', 309, 685, ui(600, 19), C.white, 'center');
    });

    panel(3, 608, 466, 524, 306, () => {
      text(ctx, 'Reminders', 636, 512, ui(600, 21), C.inkLight);
      reminders.forEach((label, i) => {
        const y = 568 + i * 66;
        text(ctx, label, 636, y, ui(500, 23.5), C.ink);
        box(ctx, 1046, y - 23, 58, 34, 17, { fill: C.sage });
        disc(ctx, 1087, y - 6, 13.5, C.white);
        if (i < 2) box(ctx, 636, y + 26, 468, 1.5, 0.75, { fill: rgba(C.ink, 0.07) });
      });
    });
  };
}

// ── Apple TV screens (1280 x 720 points) ───────────────────────────────────

const PLAYERS = [
  { name: 'Player 1', color: C.sage, x: 60 },
  { name: 'Player 2', color: C.lavender, x: 970 },
];

export function tvSetup({ pressAt }) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 1280, 720);
    text(ctx, 'Two Player Mode', 640, 176, serif(300, 70), C.ink, 'center');
    text(ctx, 'Take turns and practice together!', 640, 232, ui(400, 28), C.inkLight, 'center');
    PLAYERS.forEach((player, i) => {
      const x = 250 + i * 420;
      card(ctx, x, 290, 360, 170, 30);
      disc(ctx, x + 72, 375, 36, rgba(player.color, 0.2));
      text(ctx, String(i + 1), x + 72, 387, serif(500, 34), player.color, 'center');
      text(ctx, player.name, x + 128, 386, ui(600, 30), C.ink);
    });
    box(ctx, 480, 512, 320, 94, 47, { stroke: rgba(C.sage, 0.7), lineWidth: 4 });
    button(ctx, 490, 522, 300, 74, 'Start Game', t, pressAt, 27);
  };
}

function scoreboard(ctx, active, scores) {
  PLAYERS.forEach((player, i) => {
    const on = i === active;
    box(ctx, player.x, 44, 250, 64, 32, {
      fill: on ? mix(C.white, player.color, 0.28) : C.white,
      stroke: on ? player.color : HAIRLINE,
      lineWidth: on ? 4 : 1.5,
      shadow: on ? { color: rgba(player.color, 0.45), blur: 22, y: 6 } : null,
    });
    text(ctx, player.name, player.x + 30, 85, ui(600, 24), C.ink);
    disc(ctx, player.x + 214, 76, 21, on ? C.white : rgba(player.color, 0.2));
    text(ctx, String(scores[i]), player.x + 214, 84, ui(600, 21), C.ink, 'center');
  });
}

/** question: { player, scores, prompt, options, correct }, action: { answerAt } */
export function tvQuestion(question, { answerAt }) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 1280, 720);
    const scores = [...question.scores];
    if (t > answerAt + 0.45) scores[question.player] += 1;
    scoreboard(ctx, question.player, scores);
    text(ctx, `${PLAYERS[question.player].name}’s turn`, 640, 85, ui(500, 23), C.inkLight, 'center');
    text(ctx, question.prompt, 640, 248, serif(300, 56), C.ink, 'center');

    const glow = easeOut(span(t, answerAt + 0.08, answerAt + 0.75));
    const focus = easeOut(span(t, answerAt - 1.0, answerAt - 0.6));
    const single = question.options.length === 2;
    question.options.forEach((option, i) => {
      const x = 126 + (i % 2) * 528;
      const y = single ? 386 : 330 + Math.floor(i / 2) * 136;
      const correct = i === question.correct;
      const hit = correct ? glow : 0;
      if (correct && focus > 0) {
        box(ctx, x - 9, y - 9, 518, 122, 39, { stroke: rgba(C.ink, 0.5 * focus * (1 - hit)), lineWidth: 4 });
      }
      box(ctx, x, y, 500, 104, 30, {
        fill: mix(C.white, C.sagePale, hit),
        stroke: mix(HAIRLINE, C.sage, hit),
        lineWidth: 2 + hit * 2,
        shadow: hit > 0 ? { color: rgba(C.sage, 0.6 * hit), blur: 36 * hit } : { color: rgba(C.ink, 0.06), blur: 12, y: 3 },
      });
      text(ctx, option, x + 250, y + 64, ui(500, 34), C.ink, 'center');
      if (hit > 0) {
        disc(ctx, x + 446, y + 52, 20 * hit, C.sage);
        tick(ctx, x + 446, y + 52, 21, C.white, hit);
      }
    });
  };
}

export function tvPass({ from }) {
  return (ctx, t) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 1280, 720);
    text(ctx, 'Pass the remote to Player 2!', 640, 316, serif(300, 64), C.ink, 'center');
    PLAYERS.forEach((player, i) => {
      const x = 440 + i * 400;
      disc(ctx, x, 450, 46, rgba(player.color, 0.2));
      text(ctx, String(i + 1), x, 465, serif(500, 42), player.color, 'center');
    });
    const reach = glide(t, from + 0.2, from + 1.1);
    const end = lerp(520, 746, reach);
    ctx.beginPath();
    ctx.moveTo(520, 450);
    ctx.lineTo(end, 450);
    ctx.strokeStyle = C.sage;
    ctx.lineWidth = 5;
    ctx.lineCap = 'round';
    ctx.stroke();
    ctx.beginPath();
    ctx.moveTo(end - 16, 436);
    ctx.lineTo(end + 2, 450);
    ctx.lineTo(end - 16, 464);
    ctx.lineJoin = 'round';
    ctx.stroke();
  };
}

export function tvResults({ scores }) {
  return (ctx) => {
    ctx.fillStyle = C.cream;
    ctx.fillRect(0, 0, 1280, 720);
    text(ctx, 'Fantastic effort', 640, 196, serif(300, 68), C.ink, 'center');
    text(ctx, 'from both players!', 640, 272, serif(300, 68), C.ink, 'center');
    PLAYERS.forEach((player, i) => {
      const x = 470 + i * 340;
      disc(ctx, x, 440, 70, rgba(player.color, 0.2));
      text(ctx, String(scores[i]), x, 462, serif(500, 62), player.color, 'center');
      text(ctx, player.name, x, 560, ui(600, 26), C.ink, 'center');
    });
  };
}

// ── Standalone panels ──────────────────────────────────────────────────────

/**
 * The difficulty dial that sits behind the glass. It carries no words: the
 * person practising never sees a level, so this is an abstract picture of one.
 * `level` runs 1..5.
 */
export function paintDial(panel, level) {
  const { ctx, canvas } = panel;
  const scale = canvas.width / 390;
  density = scale;
  ctx.setTransform(scale, 0, 0, scale, 0, 0);
  ctx.clearRect(0, 0, 390, 844);
  box(ctx, 6, 6, 378, 832, 46, { fill: rgba(C.sagePale, 0.94), stroke: C.sage, lineWidth: 3, dash: [12, 10] });

  const cx = 195;
  const cy = 372;
  const radius = 138;
  const from = Math.PI * (5 / 6);
  const sweep = Math.PI * (4 / 3);
  const fraction = (level - 1) / 4;
  disc(ctx, cx, cy, 86, null, rgba(C.sage, 0.4), 2);
  disc(ctx, cx, cy, 46, null, rgba(C.sage, 0.4), 2);
  arc(ctx, cx, cy, radius, from, from + sweep, rgba(C.sage, 0.3), 22);
  arc(ctx, cx, cy, radius, from, from + sweep * fraction, C.sage, 22);
  for (let i = 0; i < 5; i++) {
    const angle = from + (sweep * i) / 4;
    disc(ctx, cx + Math.cos(angle) * radius, cy + Math.sin(angle) * radius, 6, C.white, C.sage, 2.5);
  }
  const angle = from + sweep * fraction;
  const mx = cx + Math.cos(angle) * radius;
  const my = cy + Math.sin(angle) * radius;
  ctx.beginPath();
  ctx.moveTo(cx, cy);
  ctx.lineTo(lerp(cx, mx, 0.8), lerp(cy, my, 0.8));
  ctx.strokeStyle = C.gold;
  ctx.lineWidth = 6;
  ctx.lineCap = 'round';
  ctx.stroke();
  disc(ctx, cx, cy, 12, C.gold);
  disc(ctx, mx, my, 20, C.gold, C.white, 5);

  [0.72, 0.5, 0.6].forEach((width, i) => {
    box(ctx, 195 - 120, 620 + i * 38, 240 * width, 14, 7, { fill: rgba(C.sage, 0.4) });
  });
  panel.texture.needsUpdate = true;
}

/** A language chip in the style of the site's language pills. */
export function paintChip(panel, label, highlighted) {
  const { ctx, canvas } = panel;
  const scale = canvas.width / 320;
  density = scale;
  ctx.setTransform(scale, 0, 0, scale, 0, 0);
  ctx.clearRect(0, 0, 320, 96);
  box(ctx, 10, 10, 300, 76, 38, {
    fill: highlighted ? C.sagePale : C.white,
    stroke: highlighted ? C.sage : rgba(C.ink, 0.1),
    lineWidth: highlighted ? 3 : 1.5,
    shadow: { color: highlighted ? rgba(C.sage, 0.4) : rgba(C.ink, 0.1), blur: 9, y: 3 },
  });
  text(ctx, label, 160, 59, ui(500, 30), C.ink, 'center');
  panel.texture.needsUpdate = true;
}

export const FARSI_QUESTION = {
  label: `${FARSI.questionLabel} 1 ${FARSI.ofLabel} 5`,
  step: 0,
  steps: 5,
  prompt: FARSI.instructions,
  options: FARSI.options,
  correct: FARSI.options.indexOf(FARSI.correct),
  rtl: true,
};
