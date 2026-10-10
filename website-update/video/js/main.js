// Player shell: poster, lazy loading, visibility-gated muted autoplay, controls
// and keyboard. The heavy film module is only fetched when playback is wanted.
import { DURATION } from './timeline.js';

const player = document.getElementById('player');
const stage = document.getElementById('stage');
const typeLayer = stage.querySelector('.type-layer');
const startButton = document.getElementById('start');
const toggleButton = document.getElementById('toggle');
const restartButton = document.getElementById('restart');
const muteButton = document.getElementById('mute');
const seekBar = document.getElementById('seek');
const timeLabel = document.getElementById('time');
const statusLabel = document.getElementById('status');
const controls = document.getElementById('controls');

const capture = new URLSearchParams(location.search).has('capture');
const reducedMotion = matchMedia('(prefers-reduced-motion: reduce)').matches;
const SEEK_STEP = 5;
const CONTROLS_LINGER = 2600;
const COMPACT_BELOW = 560;

let film = null;
let filmRequest = null;
let time = 0;
let playing = false;
let wantsToPlay = false;
let pausedByViewer = false;
let ended = false;
let inView = false;
let muted = true;
let dirty = true;
let lastFrame = performance.now();
let lastActivity = -Infinity;

// A soundtrack can be added later by setting data-audio on the player element.
const audio = player.dataset.audio ? new Audio(player.dataset.audio) : null;
if (audio) {
  audio.preload = 'none';
  audio.muted = muted;
}

function layout() {
  const width = Math.min(window.innerWidth, (window.innerHeight * 16) / 9);
  const height = (width * 9) / 16;
  stage.style.width = `${width}px`;
  stage.style.height = `${height}px`;
  typeLayer.style.transform = `scale(${width / 1920})`;
  stage.classList.toggle('is-compact', !capture && width < COMPACT_BELOW);
  // How far (in the copy layer's own units) captions move up to clear the control bar.
  player.style.setProperty('--controls-lift', String(Math.round(((controls.offsetHeight || 56) * 1920) / width)));
  if (film) film.resize(width, height, capture ? 1 : Math.min(window.devicePixelRatio || 1, 2));
  dirty = true;
}

function loadFilm() {
  if (!filmRequest) {
    player.dataset.loading = 'true';
    filmRequest = import('./film.js')
      .then((module) => module.createFilm(stage, { capture }))
      .then((created) => {
        film = created;
        delete player.dataset.loading;
        player.dataset.started = 'true';
        layout();
        return film;
      })
      .catch((error) => {
        delete player.dataset.loading;
        player.dataset.error = 'true';
        statusLabel.textContent = 'This video could not start in this browser. The captions are in the page transcript.';
        throw error;
      });
  }
  return filmRequest;
}

function setPlaying(next) {
  playing = next;
  player.dataset.playing = String(next);
  toggleButton.setAttribute('aria-label', next ? 'Pause' : 'Play');
  lastFrame = performance.now();
  if (audio) {
    if (next) {
      audio.currentTime = time;
      audio.play().catch(() => {});
    } else {
      audio.pause();
    }
  }
}

function play() {
  if (ended || time >= DURATION) {
    time = 0;
    ended = false;
  }
  wantsToPlay = true;
  loadFilm().then(() => {
    if (wantsToPlay) setPlaying(true);
  }, () => {});
}

function pause() {
  wantsToPlay = false;
  setPlaying(false);
}

function seekTo(next) {
  time = Math.min(DURATION, Math.max(0, next));
  ended = time >= DURATION;
  if (ended && playing) pause();
  if (audio) audio.currentTime = time;
  dirty = true;
  loadFilm().catch(() => {});
}

function toggleByViewer() {
  noteActivity();
  if (playing || wantsToPlay) {
    pausedByViewer = true;
    pause();
  } else {
    pausedByViewer = false;
    play();
  }
}

function restart() {
  noteActivity();
  pausedByViewer = false;
  ended = false;
  seekTo(0);
  play();
}

function toggleMute() {
  noteActivity();
  muted = !muted;
  muteButton.setAttribute('aria-pressed', String(muted));
  muteButton.setAttribute('aria-label', muted ? 'Unmute' : 'Mute');
  if (audio) audio.muted = muted;
}

function noteActivity() {
  lastActivity = performance.now();
}

const clock = (seconds) => `${Math.floor(seconds / 60)}:${String(Math.floor(seconds % 60)).padStart(2, '0')}`;

function syncControls() {
  if (document.activeElement !== seekBar || playing) seekBar.value = String(time);
  seekBar.setAttribute('aria-valuetext', `${clock(time)} of ${clock(DURATION)}`);
  timeLabel.textContent = `${clock(time)} / ${clock(DURATION)}`;
}

// Autoplay is muted, only while at least half the player is on screen, and never
// when the viewer has asked for reduced motion or has paused it themselves.
function reconsiderAutoplay() {
  if (capture || reducedMotion) return;
  const visible = inView && document.visibilityState === 'visible';
  if (visible && !playing && !wantsToPlay && !pausedByViewer && !ended) play();
  if (!visible && (playing || wantsToPlay)) pause();
}

function frame(now) {
  if (playing) {
    time = Math.min(DURATION, time + Math.min(0.1, (now - lastFrame) / 1000));
    dirty = true;
    if (time >= DURATION) {
      ended = true;
      pause();
    }
  }
  lastFrame = now;
  if (film && dirty) {
    film.seek(time);
    syncControls();
    dirty = false;
  }
  const showControls = !playing || now - lastActivity < CONTROLS_LINGER || player.querySelector('.controls :focus-visible');
  if (player.dataset.controls !== String(Boolean(showControls))) player.dataset.controls = String(Boolean(showControls));
  requestAnimationFrame(frame);
}

if (capture) {
  // Frame-by-frame rendering drives the film directly through this hook.
  player.dataset.capture = 'true';
  layout();
  window.clarityFilm = loadFilm().then((created) => ({
    duration: DURATION,
    seek: (seconds) => created.seek(seconds),
  }));
} else {
  startButton.addEventListener('click', toggleByViewer);
  toggleButton.addEventListener('click', toggleByViewer);
  restartButton.addEventListener('click', restart);
  muteButton.addEventListener('click', toggleMute);
  seekBar.addEventListener('input', () => {
    noteActivity();
    seekTo(Number(seekBar.value));
  });
  stage.addEventListener('click', (event) => {
    if (!event.target.closest('.controls, .start')) toggleByViewer();
  });
  for (const type of ['pointermove', 'pointerdown', 'keydown', 'focusin']) {
    player.addEventListener(type, noteActivity);
  }

  document.addEventListener('keydown', (event) => {
    if (event.metaKey || event.ctrlKey || event.altKey) return;
    const onButton = event.target instanceof HTMLButtonElement;
    const onSeek = event.target === seekBar;
    const key = event.key.toLowerCase();
    if ((key === ' ' || key === 'k') && !onButton) {
      event.preventDefault();
      toggleByViewer();
    } else if (key === 'r') {
      restart();
    } else if (key === 'm') {
      toggleMute();
    } else if ((key === 'arrowleft' || key === 'arrowright') && !onSeek) {
      event.preventDefault();
      noteActivity();
      seekTo(time + (key === 'arrowright' ? SEEK_STEP : -SEEK_STEP));
    }
  });

  new IntersectionObserver(
    (entries) => {
      inView = entries[entries.length - 1].intersectionRatio >= 0.5;
      reconsiderAutoplay();
    },
    { threshold: [0, 0.5, 1] },
  ).observe(player);
  document.addEventListener('visibilitychange', reconsiderAutoplay);

  layout();
  requestAnimationFrame(frame);
}

window.addEventListener('resize', layout);
