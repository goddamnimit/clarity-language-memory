// Renderer, camera, lights and the cream backdrop: the hero's radial sage glow,
// its concentric rings, and a slow drift of sage and gold motes.
import * as THREE from '../vendor/three.min.js';
import { PALETTE, lerp, seeded } from './util.js';

const RING_RADII = [1.7, 2.6, 3.5];
const CORNER_STEPS = 28;
const MOTES = 90;

function canvasTexture(size, draw) {
  const canvas = document.createElement('canvas');
  canvas.width = canvas.height = size;
  draw(canvas.getContext('2d'), size);
  const texture = new THREE.CanvasTexture(canvas);
  texture.colorSpace = THREE.SRGBColorSpace;
  return texture;
}

/**
 * A flat outline of a rounded rectangle, built as a thin band so it keeps a
 * visible width at any resolution. With radius = half the side it is a circle,
 * which is what lets a ring morph into a device outline.
 */
export function createOutline(color, opacity) {
  const count = 4 * (CORNER_STEPS + 1);
  const positions = new Float32Array(count * 2 * 3);
  const index = [];
  for (let i = 0; i < count; i++) {
    const a = i * 2;
    const b = ((i + 1) % count) * 2;
    index.push(a, a + 1, b, a + 1, b + 1, b);
  }
  const geometry = new THREE.BufferGeometry();
  geometry.setAttribute('position', new THREE.BufferAttribute(positions, 3));
  geometry.setIndex(index);
  const material = new THREE.MeshBasicMaterial({
    color,
    transparent: true,
    opacity,
    depthWrite: false,
    fog: false,
    side: THREE.DoubleSide,
  });
  const mesh = new THREE.Mesh(geometry, material);
  mesh.frustumCulled = false;

  function shape(width, height, radius, thickness) {
    const r = Math.min(radius, width / 2, height / 2);
    const cx = width / 2 - r;
    const cy = height / 2 - r;
    const corners = [
      [cx, cy, 0],
      [-cx, cy, Math.PI / 2],
      [-cx, -cy, Math.PI],
      [cx, -cy, Math.PI * 1.5],
    ];
    let n = 0;
    for (const [ox, oy, start] of corners) {
      for (let s = 0; s <= CORNER_STEPS; s++) {
        const angle = start + (s / CORNER_STEPS) * (Math.PI / 2);
        const nx = Math.cos(angle);
        const ny = Math.sin(angle);
        positions[n++] = ox + nx * (r + thickness / 2);
        positions[n++] = oy + ny * (r + thickness / 2);
        positions[n++] = 0;
        positions[n++] = ox + nx * (r - thickness / 2);
        positions[n++] = oy + ny * (r - thickness / 2);
        positions[n++] = 0;
      }
    }
    geometry.attributes.position.needsUpdate = true;
  }

  return { mesh, material, shape };
}

function createBackdrop(scene) {
  const group = new THREE.Group();
  scene.add(group);

  const glow = new THREE.Mesh(
    new THREE.PlaneGeometry(1, 1),
    new THREE.MeshBasicMaterial({
      map: canvasTexture(512, (ctx, size) => {
        const gradient = ctx.createRadialGradient(size / 2, size / 2, 0, size / 2, size / 2, size / 2);
        gradient.addColorStop(0, 'rgba(123, 168, 152, 0.30)');
        gradient.addColorStop(0.7, 'rgba(123, 168, 152, 0)');
        ctx.fillStyle = gradient;
        ctx.fillRect(0, 0, size, size);
      }),
      transparent: true,
      depthWrite: false,
      fog: false,
    }),
  );
  glow.position.z = -2.4;
  glow.renderOrder = -4;
  group.add(glow);

  const rings = RING_RADII.map((radius, i) => {
    const ring = createOutline(PALETTE.sage, 0.3);
    ring.radius = radius;
    ring.mesh.position.z = -1.2 - i * 0.4;
    ring.mesh.renderOrder = -3;
    group.add(ring.mesh);
    return ring;
  });

  const random = seeded(20261009);
  const base = [];
  const positions = new Float32Array(MOTES * 3);
  const colors = new Float32Array(MOTES * 3);
  const sage = new THREE.Color(PALETTE.sage);
  const gold = new THREE.Color(PALETTE.gold);
  for (let i = 0; i < MOTES; i++) {
    base.push({
      x: lerp(-11, 11, random()),
      y: lerp(-5.5, 5.5, random()),
      z: lerp(-9, 3.5, random()),
      phase: random() * Math.PI * 2,
      speed: lerp(0.05, 0.14, random()),
      sway: lerp(0.15, 0.5, random()),
    });
    const tint = random() < 0.7 ? sage : gold;
    colors.set([tint.r, tint.g, tint.b], i * 3);
  }
  const moteGeometry = new THREE.BufferGeometry();
  moteGeometry.setAttribute('position', new THREE.BufferAttribute(positions, 3));
  moteGeometry.setAttribute('color', new THREE.BufferAttribute(colors, 3));
  const motes = new THREE.Points(
    moteGeometry,
    new THREE.PointsMaterial({
      size: 0.17,
      map: canvasTexture(64, (ctx, size) => {
        const gradient = ctx.createRadialGradient(size / 2, size / 2, 0, size / 2, size / 2, size / 2);
        gradient.addColorStop(0, 'rgba(255, 255, 255, 1)');
        gradient.addColorStop(0.45, 'rgba(255, 255, 255, 0.7)');
        gradient.addColorStop(1, 'rgba(255, 255, 255, 0)');
        ctx.fillStyle = gradient;
        ctx.fillRect(0, 0, size, size);
      }),
      vertexColors: true,
      transparent: true,
      opacity: 0.7,
      depthWrite: false,
      sizeAttenuation: true,
      fog: false,
    }),
  );
  motes.frustumCulled = false;
  motes.renderOrder = -2;
  group.add(motes);

  /**
   * @param t      master clock, seconds
   * @param state  { scale, firstRing: { width, height, radius, opacity, z } }
   */
  function update(t, state) {
    const glowSize = 11 * state.scale;
    glow.scale.set(glowSize, glowSize, 1);
    rings.forEach((ring, i) => {
      const pulse = 0.8 + 0.2 * Math.sin((t - i) * ((Math.PI * 2) / 6));
      if (i === 0) {
        const first = state.firstRing;
        ring.shape(first.width, first.height, first.radius, 0.016);
        ring.mesh.position.z = first.z;
        ring.material.opacity = 0.42 * pulse * first.opacity;
      } else {
        const size = ring.radius * 2 * state.scale;
        ring.shape(size, size, size / 2, 0.016);
        ring.material.opacity = 0.34 * pulse;
      }
    });
    for (let i = 0; i < MOTES; i++) {
      const mote = base[i];
      const rise = ((mote.y + 5.5 + t * mote.speed) % 11) - 5.5;
      positions[i * 3] = mote.x + Math.sin(t * 0.21 + mote.phase) * mote.sway;
      positions[i * 3 + 1] = rise;
      positions[i * 3 + 2] = mote.z + Math.cos(t * 0.17 + mote.phase) * mote.sway;
    }
    moteGeometry.attributes.position.needsUpdate = true;
  }

  return { update, ringRadius: RING_RADII[0] };
}

export function createStage(canvas, { capture = false } = {}) {
  const renderer = new THREE.WebGLRenderer({
    canvas,
    antialias: true,
    alpha: false,
    powerPreference: 'high-performance',
    preserveDrawingBuffer: capture,
  });
  renderer.outputColorSpace = THREE.SRGBColorSpace;
  renderer.setClearColor(new THREE.Color(PALETTE.cream), 1);

  const scene = new THREE.Scene();
  scene.fog = new THREE.Fog(new THREE.Color(PALETTE.cream), 16, 34);

  const camera = new THREE.PerspectiveCamera(28, 16 / 9, 0.1, 120);

  scene.add(new THREE.HemisphereLight(0xffffff, 0xe9e1d6, 1.5));
  const key = new THREE.DirectionalLight(0xffffff, 1.6);
  key.position.set(-4, 6, 9);
  scene.add(key);
  const fill = new THREE.DirectionalLight(0xfff4e6, 0.5);
  fill.position.set(6, -2, 6);
  scene.add(fill);

  const backdrop = createBackdrop(scene);
  const maxAnisotropy = renderer.capabilities.getMaxAnisotropy();

  function resize(width, height, pixelRatio) {
    renderer.setPixelRatio(pixelRatio);
    renderer.setSize(width, height, false);
  }

  return {
    renderer,
    scene,
    camera,
    backdrop,
    maxAnisotropy,
    resize,
    render: () => renderer.render(scene, camera),
    dispose: () => renderer.dispose(),
  };
}
