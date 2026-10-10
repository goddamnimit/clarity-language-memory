// The film itself: build the world once, then draw any moment of it on demand.
// `seek(t)` is the only way a frame is produced, and it depends on t alone, so
// playback, scrubbing and the offline MP4 render all show identical frames.
import { createPanel, createPhone, createRemote, createTablet, createTelevision } from './devices.js';
import { loadFonts } from './fonts.js';
import hook from './scenes/01-hook.js';
import app from './scenes/02-app.js';
import adapts from './scenes/03-adapts.js';
import languages, { LANGUAGES, RIGHT_TO_LEFT } from './scenes/04-languages.js';
import caregivers from './scenes/05-caregivers.js';
import together from './scenes/06-together.js';
import close from './scenes/07-close.js';
import { paintChip, paintDial, paintPhone, paintTablet, paintTelevision } from './screens.js';
import { createOutline, createStage } from './stage.js';
import { DURATION } from './timeline.js';
import { createType } from './type.js';
import { PALETTE, clamp, glide, track } from './util.js';

const SCENES = [hook, app, adapts, languages, caregivers, together, close];
const SCREEN_REFRESH = 30;
const LAYER_GAP = 2.5;

function buildTracks() {
  const keys = {};
  for (const scene of SCENES) {
    for (const [name, list] of Object.entries(scene.keys ?? {})) {
      (keys[name] ??= []).push(...list);
    }
  }
  return Object.fromEntries(Object.entries(keys).map(([name, list]) => [name, track(list)]));
}

const clipsFor = (device) => SCENES.flatMap((scene) => scene[device] ?? []);

export { DURATION };

export async function createFilm(root, { capture = false } = {}) {
  await loadFonts();

  const stage = createStage(root.querySelector('canvas'), { capture });
  const type = createType(root.querySelector('.type-layer'));
  const tracks = buildTracks();
  const clips = { phone: clipsFor('phone'), tablet: clipsFor('tablet'), tv: clipsFor('tv') };
  const anisotropy = Math.min(8, stage.maxAnisotropy);

  const phone = createPhone(anisotropy);
  const tablet = createTablet(anisotropy);
  const tv = createTelevision(anisotropy);
  const remote = createRemote();
  stage.scene.add(phone.group, tablet.group, tv.group, remote.group);

  // The layer that lifts away behind the phone's glass, and the dial on it.
  const dial = createPanel({
    width: phone.screenSize.width,
    height: phone.screenSize.height,
    pixels: [585, 1266],
    anisotropy,
  });
  dial.mesh.renderOrder = 0.5;
  const layer = createOutline(PALETTE.sage, 0);
  layer.shape(phone.size.width, phone.size.height, 0.25, 0.02);
  layer.mesh.renderOrder = 0.6;
  phone.group.add(dial.mesh, layer.mesh);

  const chips = LANGUAGES.map((label, i) => {
    const make = (highlighted) => {
      const panel = createPanel({ width: 1.34, height: 0.402, pixels: [640, 192], anisotropy });
      paintChip(panel, label, highlighted);
      panel.mesh.renderOrder = 5;
      stage.scene.add(panel.mesh);
      return panel;
    };
    return { plain: make(false), lit: RIGHT_TO_LEFT.includes(i) ? make(true) : null };
  });

  const painted = { phone: null, tablet: null, tv: null, dial: null };
  const shouldPaint = (name, t, visible) => {
    if (!visible) return false;
    const stamp = capture ? t : Math.round(t * SCREEN_REFRESH);
    if (painted[name] === stamp) return false;
    painted[name] = stamp;
    return true;
  };

  function place(device, position, turn, opacity, t, phase) {
    const float = glide(t, 7.5, 10);
    device.group.position.set(position[0], position[1] + Math.sin(t * 0.8 + phase) * 0.035 * float, position[2]);
    device.group.rotation.set(
      Math.sin(t * 0.6 + phase) * 0.014 * float,
      turn + Math.sin(t * 0.5 + phase * 2) * 0.022 * float,
      Math.sin(t * 0.45 + phase * 3) * 0.006 * float,
    );
    device.fader.set(opacity);
  }

  function seek(time) {
    const t = clamp(time, 0, DURATION);
    const now = Object.fromEntries(Object.entries(tracks).map(([name, sample]) => [name, sample(t)]));

    const state = {
      firstRing: { width: stage.backdrop.ringRadius * 2, height: 0, radius: 0, opacity: 1, z: -1.2 },
      explode: 0,
      dialLevel: 2,
      phoneSpin: 0,
      halo: { presence: 0, turn: 0, highlight: 0 },
      remote: { opacity: 0, position: [0, -3, 1.6], roll: 0 },
    };
    state.firstRing.height = state.firstRing.width;
    state.firstRing.radius = state.firstRing.width / 2;
    for (const scene of SCENES) scene.update?.(t, state);

    stage.camera.position.set(...now.cameraPosition);
    stage.camera.lookAt(...now.cameraTarget);
    stage.scene.fog.near = now.fog[0];
    stage.scene.fog.far = now.fog[1];
    stage.backdrop.update(t, { scale: now.ringScale, firstRing: state.firstRing });

    place(phone, now.phonePosition, now.phoneTurn + state.phoneSpin, now.phoneOpacity, t, 0);
    phone.group.scale.setScalar(now.phoneScale);
    place(tablet, now.tabletPosition, now.tabletTurn, now.tabletOpacity, t, 1.7);
    place(tv, now.tvPosition, 0, now.tvOpacity, t, 3.1);

    if (shouldPaint('phone', t, phone.group.visible)) paintPhone(phone, t, clips.phone);
    if (shouldPaint('tablet', t, tablet.group.visible)) paintTablet(tablet, t, clips.tablet);
    if (shouldPaint('tv', t, tv.group.visible)) paintTelevision(tv, t, clips.tv);

    const lifted = state.explode > 0.002;
    dial.mesh.visible = layer.mesh.visible = lifted;
    if (lifted) {
      dial.mesh.position.z = -state.explode * LAYER_GAP;
      dial.material.opacity = clamp(state.explode * 1.6);
      layer.mesh.position.z = -state.explode * LAYER_GAP * 0.5;
      layer.material.opacity = 0.55 * clamp(state.explode * 1.6);
      if (shouldPaint('dial', state.dialLevel, true)) paintDial(dial, state.dialLevel);
    }

    const halo = state.halo;
    chips.forEach((chip, i) => {
      const visible = halo.presence > 0.004;
      chip.plain.mesh.visible = visible;
      if (chip.lit) chip.lit.mesh.visible = visible && halo.highlight > 0.004;
      if (!visible) return;
      const angle = Math.PI / 2 + (i - 5.5) * ((Math.PI * 2) / LANGUAGES.length) + halo.turn;
      const reach = 3.95 + (1 - halo.presence) * 3.2;
      const lit = chip.lit ? halo.highlight : 0;
      const x = Math.cos(angle) * reach;
      const y = 0.3 + Math.sin(angle) * 1.44 + Math.sin(t * 0.9 + i) * 0.03;
      const z = Math.sin(angle) * 3.1;
      const scale = 1 + lit * 0.16;
      chip.plain.mesh.position.set(x, y, z);
      chip.plain.mesh.scale.setScalar(scale);
      chip.plain.material.opacity = halo.presence * (1 - lit);
      if (chip.lit) {
        chip.lit.mesh.position.set(x, y, z + 0.01);
        chip.lit.mesh.scale.setScalar(scale);
        chip.lit.material.opacity = halo.presence * lit;
      }
    });

    remote.group.position.set(...state.remote.position);
    remote.group.rotation.set(-0.3, 0, state.remote.roll);
    remote.fader.set(state.remote.opacity);

    type.update(t);
    stage.render();
  }

  return {
    duration: DURATION,
    seek,
    resize: stage.resize,
    dispose: stage.dispose,
  };
}
