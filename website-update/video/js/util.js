// Small math helpers shared by every part of the film.

export const PALETTE = {
  ink: '#2B3A4A',
  inkLight: '#566878',
  sage: '#7BA898',
  sageText: '#5F9282',
  sageLight: '#B4D4C8',
  sagePale: '#EBF4F1',
  cream: '#F7F3EE',
  gold: '#C9A96E',
  rose: '#E8B4A0',
  lavender: '#A89FD4',
  white: '#FFFFFF',
};

export const clamp = (x, lo = 0, hi = 1) => Math.min(hi, Math.max(lo, x));
export const lerp = (a, b, p) => a + (b - a) * p;

/** Linear progress of t through [t0, t1], clamped to 0..1. */
export const span = (t, t0, t1) => clamp((t - t0) / (t1 - t0));

export const easeInOut = (p) => p * p * p * (p * (p * 6 - 15) + 10);
export const easeOut = (p) => 1 - Math.pow(1 - p, 3);
export const easeIn = (p) => p * p * p;

/** Eased progress through [t0, t1]. */
export const glide = (t, t0, t1) => easeInOut(span(t, t0, t1));

/** Rises over [t0, t0 + fade] and falls over [t1 - fade, t1]. */
export const window01 = (t, t0, t1, fade = 0.5) =>
  Math.min(easeOut(span(t, t0, t0 + fade)), 1 - easeIn(span(t, t1 - fade, t1)));

/**
 * Keyframe track. `keys` is a time-sorted list of [time, value] where value is a
 * number or an array of numbers. Sampling eases between neighbouring keys.
 */
export function track(keys) {
  const isArray = Array.isArray(keys[0][1]);
  return (t) => {
    if (t <= keys[0][0]) return keys[0][1];
    const last = keys[keys.length - 1];
    if (t >= last[0]) return last[1];
    let i = 1;
    while (keys[i][0] < t) i++;
    const [ta, a] = keys[i - 1];
    const [tb, b] = keys[i];
    const p = easeInOut((t - ta) / (tb - ta));
    return isArray ? a.map((v, n) => lerp(v, b[n], p)) : lerp(a, b, p);
  };
}

/** Deterministic pseudo-random generator (mulberry32). */
export function seeded(seed) {
  let a = seed >>> 0;
  return () => {
    a = (a + 0x6d2b79f5) >>> 0;
    let x = Math.imul(a ^ (a >>> 15), 1 | a);
    x = (x + Math.imul(x ^ (x >>> 7), 61 | x)) ^ x;
    return ((x ^ (x >>> 14)) >>> 0) / 4294967296;
  };
}

export const rgba = (hex, alpha) => {
  const n = parseInt(hex.slice(1), 16);
  return `rgba(${n >> 16}, ${(n >> 8) & 255}, ${n & 255}, ${alpha})`;
};

const channels = (hex) => {
  const n = parseInt(hex.slice(1), 16);
  return [n >> 16, (n >> 8) & 255, n & 255];
};

/** Blend two hex colours; p = 0 gives a, p = 1 gives b. */
export const mix = (a, b, p) => {
  const ca = channels(a);
  const cb = channels(b);
  return `rgb(${ca.map((v, i) => Math.round(lerp(v, cb[i], p))).join(', ')})`;
};
