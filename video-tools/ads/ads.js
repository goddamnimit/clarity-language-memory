// Short vertical spots for Instagram, built from the film's own devices and
// screens. Every frame is a pure function of t: window.clarityAd.seek(t).
//   /__ads/?spot=hero|spin|trio|numbers|promise
import * as THREE from '/video/vendor/three.min.js';
import { loadFonts } from '/video/js/fonts.js';
import { createStage } from '/video/js/stage.js';
import { createPhone, createTablet, createTelevision } from '/video/js/devices.js';
import {
  paintPhone,
  paintTablet,
  paintTelevision,
  phoneComplete,
  phoneHome,
  phoneQuestion,
  tabletInsights,
  tvQuestion,
} from '/video/js/screens.js';
import { clamp, easeInOut, easeOut, span, track } from '/video/js/util.js';

const BEAT = 0.6; // 100 bpm, matching the generated music

const ODD_ONE_OUT = {
  label: 'Question 1 of 5',
  step: 0,
  steps: 5,
  prompt: 'Which one does not belong?',
  options: ['Apple', 'Pear', 'Hammer', 'Plum'],
  correct: 2,
  note: 'Apple, pear and plum are fruit. A hammer is a tool.',
};

const ANALOGY = {
  label: 'Question 2 of 5',
  step: 1,
  steps: 5,
  prompt: 'Cold is to ice as hot is to …',
  options: ['Fire', 'Snow', 'River', 'Stone'],
  correct: 0,
  note: 'Ice is cold. Fire is hot.',
};

const TV_TURN = {
  player: 0,
  scores: [0, 0],
  prompt: 'Which one does not belong?',
  options: ['Sock', 'Shoe', 'Glove', 'Spoon'],
  correct: 3,
};

const HIDDEN = { position: [[0, [0, -30, 0]]], opacity: [[0, 0]] };
const TURN = Math.PI * 2;

// Type cues: `at` is [in, out] in seconds, `y` the vertical centre as a share of
// the frame. `anim` is 'focus' (rise out of a blur), 'punch' (lands on the beat)
// or 'cut' (hard in, hard out).
const SPOTS = {
  hero: {
    duration: 12,
    camera: [[0, [0, -0.9, 13]], [9.6, [0, -0.9, 11.2]]],
    target: [[0, [0, -0.9, 0]], [9.6, [0, -0.9, 0]]],
    phone: {
      position: [[0, [0, -8.5, 0]], [0.5, [0, -8.5, 0]], [3.0, [0, -1.15, 0]]],
      tilt: [[0.5, 0.62], [3.0, 0.14], [9.6, 0.05]],
      turn: [[0.5, -0.5], [3.0, -0.16], [9.6, 0.12]],
      opacity: [[0, 1]],
      clips: [
        { from: 0, paint: phoneHome({ tapAt: 6.1 }) },
        { from: 6.5, fade: 0.6, paint: phoneQuestion(ODD_ONE_OUT, { answerAt: 8.2, by: 'tap', mic: {} }) },
      ],
      sweeps: [[2.5, 3.9], [7.3, 8.7]],
    },
    type: [
      { at: [0.5, 5.7], y: 0.12, anim: 'focus', html: '<div class="mark" style="font-size:190px">Clarity<i>.</i></div>' },
      { at: [1.7, 5.7], y: 0.205, anim: 'focus', html: '<div class="sub" style="font-size:46px">Language and memory practice.</div>' },
      { at: [6.0, 9.6], y: 0.135, anim: 'focus', html: '<div class="h1" style="font-size:118px">Short. <em>Gentle.</em><br>Free.</div>' },
    ],
  },

  spin: {
    duration: 12,
    camera: [[0, [0, -1.9, 11.6]], [9.8, [0, -1.5, 10.6]]],
    target: [[0, [0, -1.0, 0]], [9.8, [0, -1.0, 0]]],
    phone: {
      position: [[0, [0, -1.25, 0]]],
      tilt: [[0, 0.08]],
      turn: [[0, -Math.PI], [2.6, -0.14], [5.0, -0.14], [6.1, -0.14 - TURN], [8.2, -0.14 - TURN], [9.3, -0.14 - 2 * TURN], [9.8, -0.1 - 2 * TURN]],
      opacity: [[0, 1]],
      clips: [
        { from: 0, paint: phoneHome() },
        { from: 5.5, fade: 0.05, paint: phoneQuestion(ODD_ONE_OUT, { answerAt: 6.7, by: 'tap', mic: {} }) },
        {
          from: 7.1,
          enter: 'slide',
          fade: 0.5,
          paint: phoneQuestion(ANALOGY, { answerAt: 8.1, by: 'voice', mic: { listen: [7.4, 8.1], heard: { word: 'fire', at: 7.8, until: 8.7 } } }),
        },
        { from: 8.75, fade: 0.05, paint: phoneComplete({ from: 8.75 }) },
      ],
      sweeps: [[2.4, 3.6]],
    },
    type: [
      { at: [0.9, 4.9], y: 0.1, anim: 'focus', html: '<div class="h1" style="font-size:120px">Five questions.</div>' },
      { at: [1.8, 4.9], y: 0.175, anim: 'focus', html: '<div class="sub" style="font-size:50px">At your own pace.</div>' },
      { at: [6.0, 8.6], y: 0.1, anim: 'punch', html: '<div class="h1" style="font-size:120px">Tap an answer.</div>' },
      { at: [6.9, 8.6], y: 0.175, anim: 'punch', html: '<div class="h1" style="font-size:80px"><em>Or say it aloud.</em></div>' },
      { at: [9.0, 9.8], y: 0.12, anim: 'focus', html: '<div class="h1" style="font-size:100px">Calm, encouraging<br><em>feedback.</em></div>' },
    ],
  },

  trio: {
    duration: 12.6,
    camera: [[0, [1.5, -1.4, 12.2]], [2.6, [1.5, -1.4, 11.4]], [4.6, [0.2, -2.0, 14.0]], [7.0, [0, -0.3, 19.5]], [10, [0, -0.2, 18.6]]],
    target: [[0, [1.5, -1.6, 1.2]], [2.6, [1.5, -1.6, 1.2]], [4.6, [0.2, -1.8, 0]], [7.0, [0, 0.1, -1]], [10, [0, 0.1, -1]]],
    phone: {
      position: [[0, [1.5, -2.6, 1.2]]],
      tilt: [[0, 0.04]],
      turn: [[0, -0.12], [10, -0.22]],
      opacity: [[0, 1]],
      clips: [{ from: 0, paint: phoneHome() }],
      sweeps: [[0.6, 1.8]],
    },
    tablet: {
      position: [[2.6, [-6, -0.9, -1.8]], [4.4, [-0.6, -0.9, -1.8]]],
      tilt: [[0, 0.03]],
      turn: [[2.6, 0.6], [4.4, 0.14]],
      opacity: [[2.6, 0], [3.2, 1]],
      clips: [{ from: 0, paint: tabletInsights({ from: 3.6 }) }],
    },
    tv: {
      position: [[4.6, [0, 13, -6.5]], [6.6, [0, 3.0, -6.5]]],
      tilt: [[0, 0]],
      turn: [[0, 0]],
      opacity: [[5.0, 0], [5.6, 1]],
      clips: [{ from: 0, paint: tvQuestion(TV_TURN, { answerAt: 8.4 }) }],
    },
    type: [
      { at: [0.4, 2.6], y: 0.12, anim: 'punch', html: '<div class="h1" style="font-size:150px">iPhone.</div>' },
      { at: [3.0, 5.1], y: 0.12, anim: 'punch', html: '<div class="h1" style="font-size:150px">iPad.</div>' },
      { at: [6.4, 8.0], y: 0.075, anim: 'punch', html: '<div class="h1" style="font-size:150px">Apple TV.</div>' },
      { at: [8.1, 10], y: 0.075, anim: 'focus', html: '<div class="h1" style="font-size:118px">One app. <em>All three.</em></div>' },
    ],
  },

  numbers: {
    duration: 12.6,
    type: [
      { at: [0.3, 2.6], y: 0.4, anim: 'punch', html: '<div class="giant" style="font-size:560px">18</div>' },
      { at: [0.9, 2.6], y: 0.6, anim: 'focus', html: '<div class="h1" style="font-size:96px">languages.<br><em>And counting.</em></div>' },
      { at: [2.7, 5.0], y: 0.42, anim: 'punch', html: '<div class="giant" style="font-size:300px">18,000+</div>' },
      { at: [3.3, 5.0], y: 0.56, anim: 'focus', html: '<div class="h1" style="font-size:96px">practice<br>questions.</div>' },
      { at: [5.1, 7.4], y: 0.4, anim: 'punch', html: '<div class="giant" style="font-size:560px"><em style="color:var(--sage-text);font-style:normal">$0</em></div>' },
      { at: [5.7, 7.4], y: 0.6, anim: 'focus', html: '<div class="h1" style="font-size:96px">Nothing to unlock.</div>' },
      { at: [7.5, 9.9], y: 0.4, anim: 'punch', html: '<div class="giant" style="font-size:560px">0</div>' },
      { at: [8.1, 9.9], y: 0.6, anim: 'focus', html: '<div class="h1" style="font-size:96px">ads.</div>' },
    ],
  },

  promise: {
    duration: 9.6,
    type: [
      { at: [0, 1.2], anim: 'cut', bg: 'var(--ink)' },
      { at: [0.1, 1.2], y: 0.42, anim: 'punch', html: '<div class="h1 on-dark" style="font-size:230px">Free.</div>' },
      { at: [1.2, 2.4], anim: 'cut', bg: 'var(--cream)' },
      { at: [1.2, 2.4], y: 0.42, anim: 'punch', html: '<div class="h1" style="font-size:210px">No ads.</div>' },
      { at: [2.4, 3.6], anim: 'cut', bg: 'var(--sage)' },
      { at: [2.4, 3.6], y: 0.42, anim: 'punch', html: '<div class="h1" style="font-size:170px;color:#fff">No<br>accounts.</div>' },
      { at: [3.6, 7.0], anim: 'cut', bg: 'var(--ink)' },
      { at: [3.6, 7.0], y: 0.42, anim: 'punch', html: '<div class="h1 on-dark" style="font-size:150px"><em>Never sells<br>your data.</em></div>' },
      { at: [4.8, 7.0], y: 0.6, anim: 'focus', html: '<div class="sub" style="font-size:46px;color:#C9D3DB">What you practice stays on your device.</div>' },
    ],
  },
};

const END_CARD = `<div style="display:flex;flex-direction:column;align-items:center">
  <div class="mark" style="font-size:210px">Clarity<i>.</i></div>
  <div style="font-size:46px;font-weight:500;margin-top:30px">Language &amp; memory practice</div>
  <div class="pill" style="font-size:42px;margin-top:58px">Free on the App Store</div>
  <div class="sub" style="font-size:38px;margin-top:46px">claritylanguageandmemory.com</div>
</div>`;
const END_SECONDS = 2.6;

const smooth = (p) => easeInOut(clamp(p));

// A soft diagonal glint drawn on a small canvas over the screen glass.
// The film's three.js subset has no shader material, so the band is repainted per frame.
const ADDITIVE = 2; // THREE.AdditiveBlending

function createSweep(geometry) {
  const canvas = document.createElement('canvas');
  canvas.width = 128;
  canvas.height = 256;
  const ctx = canvas.getContext('2d');
  const texture = new THREE.CanvasTexture(canvas);
  const material = new THREE.MeshBasicMaterial({ map: texture, transparent: true, depthWrite: false, blending: ADDITIVE });
  const mesh = new THREE.Mesh(geometry, material);
  function draw(progress, strength) {
    ctx.clearRect(0, 0, 128, 256);
    const centre = progress * 1.6 - 0.3;
    const gradient = ctx.createLinearGradient(0, 256, 128, 0);
    const stop = (at, alpha) => gradient.addColorStop(clamp(at), `rgba(255,255,255,${alpha})`);
    stop(centre - 0.22, 0);
    stop(centre - 0.06, 0.1 * strength);
    stop(centre, 0.34 * strength);
    stop(centre + 0.05, 0.1 * strength);
    stop(centre + 0.2, 0);
    ctx.fillStyle = gradient;
    ctx.fillRect(0, 0, 128, 256);
    texture.needsUpdate = true;
  }
  return { mesh, draw };
}

export async function createAd(root, name) {
  const spot = SPOTS[name];
  await loadFonts();
  await document.fonts.ready;
  const stage = createStage(root.querySelector('canvas'), { capture: true });
  stage.scene.fog.near = 40;
  stage.scene.fog.far = 90;
  const anisotropy = Math.min(8, stage.maxAnisotropy);

  const devices = {};
  const makers = { phone: [createPhone, paintPhone], tablet: [createTablet, paintTablet], tv: [createTelevision, paintTelevision] };
  for (const [key, [make, paint]] of Object.entries(makers)) {
    const plan = spot[key] ?? HIDDEN;
    const device = make(anisotropy);
    stage.scene.add(device.group);
    const tracks = {
      position: track(plan.position),
      tilt: track(plan.tilt ?? [[0, 0]]),
      turn: track(plan.turn ?? [[0, 0]]),
      opacity: track(plan.opacity),
    };
    let sweep = null;
    if (plan.sweeps) {
      const screen = device.group.children.find((child) => child.material?.map === device.texture);
      sweep = createSweep(screen.geometry);
      sweep.mesh.position.z = screen.position.z + 0.002;
      sweep.mesh.renderOrder = 4;
      device.group.add(sweep.mesh);
    }
    devices[key] = { device, plan, paint, tracks, sweep };
  }

  const camera = spot.camera ? { position: track(spot.camera), target: track(spot.target) } : null;

  const layer = root.querySelector('.type');
  const cues = [...spot.type, { at: [spot.duration - END_SECONDS, spot.duration + 1], y: 0.47, anim: 'focus', html: END_CARD, end: true }];
  const nodes = cues.map((cue) => {
    const node = document.createElement('div');
    if (cue.bg) {
      node.className = 'bg';
      node.style.background = cue.bg;
    } else {
      node.innerHTML = cue.html;
    }
    layer.append(node);
    return node;
  });
  // The end card sits on a cream sheet that fades in over everything.
  const sheet = document.createElement('div');
  sheet.className = 'bg';
  sheet.style.background = 'var(--cream)';
  layer.insertBefore(sheet, nodes[nodes.length - 1]);

  function resize() {
    const { innerWidth: width, innerHeight: height } = window;
    stage.resize(width, height, 1);
    stage.camera.aspect = width / height;
    stage.camera.updateProjectionMatrix();
  }
  resize();

  function seek(t) {
    for (const { device, plan, paint, tracks, sweep } of Object.values(devices)) {
      const [x, y, z] = tracks.position(t);
      device.group.position.set(x, y + Math.sin(t * 0.8) * 0.03, z);
      device.group.rotation.set(tracks.tilt(t), tracks.turn(t), 0);
      device.fader.set(tracks.opacity(t));
      if (device.group.visible && plan.clips) paint(device, t, plan.clips);
      if (sweep) {
        const active = plan.sweeps.find(([a, b]) => t >= a && t <= b);
        sweep.mesh.visible = Boolean(active);
        if (active) {
          const p = span(t, active[0], active[1]);
          sweep.draw(easeInOut(p), Math.sin(Math.PI * p));
        }
      }
    }
    if (camera) {
      stage.camera.position.set(...camera.position(t));
      stage.camera.lookAt(...camera.target(t));
    } else {
      stage.camera.position.set(0, 0, 11);
      stage.camera.lookAt(0, 0, 0);
    }
    const beatPulse = 1 + 0.025 * Math.exp(-((t % BEAT) / BEAT) * 5);
    const circle = 1.7 * 2;
    stage.backdrop.update(t, {
      scale: (camera ? 1.25 : 1.05) * (camera ? 1 : beatPulse),
      firstRing: { width: circle, height: circle, radius: circle / 2, opacity: 1, z: -1.2 },
    });
    stage.render();

    cues.forEach((cue, i) => {
      const node = nodes[i];
      const [start, stop] = cue.at;
      if (t < start || t >= stop) {
        node.style.opacity = 0;
        return;
      }
      if (cue.bg) {
        node.style.opacity = 1;
        return;
      }
      const leave = cue.anim === 'cut' || cue.end ? 0 : smooth((t - (stop - 0.3)) / 0.3);
      let opacity = 1;
      let transform = '';
      let blur = 0;
      if (cue.anim === 'focus') {
        const p = smooth((t - start) / 0.8);
        opacity = p;
        blur = (1 - p) * 14;
        transform = `translateY(${(1 - p) * 50}px)`;
      } else if (cue.anim === 'punch') {
        const p = easeOut(clamp((t - start) / 0.45));
        opacity = clamp((t - start) / 0.12);
        transform = `scale(${1.12 - 0.12 * p})`;
      }
      node.style.top = `${cue.y * 100}%`;
      node.style.opacity = opacity * (1 - leave);
      node.style.filter = blur > 0.05 ? `blur(${blur.toFixed(2)}px)` : 'none';
      node.style.transform = `translateY(-50%) ${transform}`;
    });
    sheet.style.opacity = smooth((t - (spot.duration - END_SECONDS - 0.2)) / 0.6);
  }

  seek(0);
  return { seek, duration: spot.duration, resize };
}
