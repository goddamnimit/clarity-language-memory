// Device mockups built from rounded slabs: iPhone, iPad, a television on a
// console with a plain set-top box, and a plain remote. No logos anywhere.
import * as THREE from '../vendor/three.min.js';
import { PALETTE } from './util.js';

const GLASS = '#141C24';

function roundedShape(width, height, radius) {
  const r = Math.max(0.001, Math.min(radius, width / 2, height / 2));
  const x = -width / 2;
  const y = -height / 2;
  const shape = new THREE.Shape();
  shape.moveTo(x + r, y);
  shape.lineTo(x + width - r, y);
  shape.absarc(x + width - r, y + r, r, -Math.PI / 2, 0, false);
  shape.lineTo(x + width, y + height - r);
  shape.absarc(x + width - r, y + height - r, r, 0, Math.PI / 2, false);
  shape.lineTo(x + r, y + height);
  shape.absarc(x + r, y + height - r, r, Math.PI / 2, Math.PI, false);
  shape.lineTo(x, y + r);
  shape.absarc(x + r, y + r, r, Math.PI, Math.PI * 1.5, false);
  return shape;
}

/** A solid block with rounded corners and softly bevelled edges, centred on the origin. */
function slabGeometry(width, height, depth, radius, bevel = 0.02) {
  const b = Math.min(bevel, depth / 2 - 0.002);
  const geometry = new THREE.ExtrudeGeometry(roundedShape(width - 2 * b, height - 2 * b, radius - b), {
    depth: depth - 2 * b,
    bevelEnabled: true,
    bevelThickness: b,
    bevelSize: b,
    bevelSegments: 4,
    curveSegments: 18,
  });
  geometry.translate(0, 0, -(depth - 2 * b) / 2);
  return geometry;
}

/** A flat rounded rectangle whose UVs run 0..1 across its bounds. */
function faceGeometry(width, height, radius) {
  const geometry = new THREE.ShapeGeometry(roundedShape(width, height, radius), 18);
  const position = geometry.attributes.position;
  const uv = geometry.attributes.uv;
  for (let i = 0; i < position.count; i++) {
    uv.setXY(i, position.getX(i) / width + 0.5, position.getY(i) / height + 0.5);
  }
  return geometry;
}

function softShadow(width, height) {
  const canvas = document.createElement('canvas');
  const pad = 0.28;
  canvas.width = 256;
  canvas.height = Math.round((256 * (height * (1 + pad))) / (width * (1 + pad)));
  const ctx = canvas.getContext('2d');
  const w = canvas.width / (1 + pad);
  const h = canvas.height / (1 + pad);
  // Draw the shape off-canvas so only its blurred shadow lands in view.
  ctx.shadowColor = 'rgba(43, 58, 74, 1)';
  ctx.shadowBlur = canvas.width * 0.09;
  ctx.shadowOffsetX = 1000;
  ctx.fillStyle = '#000';
  ctx.fillRect((canvas.width - w) / 2 - 1000, (canvas.height - h) / 2, w, h);
  const texture = new THREE.CanvasTexture(canvas);
  texture.colorSpace = THREE.SRGBColorSpace;
  const mesh = new THREE.Mesh(
    new THREE.PlaneGeometry(width * (1 + pad), height * (1 + pad)),
    new THREE.MeshBasicMaterial({ map: texture, transparent: true, opacity: 0.3, depthWrite: false }),
  );
  mesh.renderOrder = 0;
  return mesh;
}

/** Tracks materials so a whole object can be faded as one. */
function createFader(group) {
  const parts = [];
  return {
    add(material) {
      material.transparent = true;
      parts.push({ material, base: material.opacity });
      return material;
    },
    set(opacity) {
      group.visible = opacity > 0.004;
      for (const part of parts) part.material.opacity = part.base * opacity;
    },
  };
}

function solid(color, fader, roughness = 0.5) {
  return fader.add(new THREE.MeshStandardMaterial({ color, roughness, metalness: 0.08 }));
}

/**
 * A device with a live screen. `points` is the screen's size in layout points
 * and `density` the number of texture pixels per point.
 */
function createScreenDevice({ width, height, depth, radius, bezel, points, density, bodyColor, anisotropy }) {
  const group = new THREE.Group();
  const fader = createFader(group);

  const shadow = softShadow(width, height);
  shadow.position.set(0, -height * 0.035, -depth / 2 - 0.05);
  fader.add(shadow.material);
  group.add(shadow);

  const body = new THREE.Mesh(slabGeometry(width, height, depth, radius), solid(bodyColor, fader));
  body.renderOrder = 1;
  group.add(body);

  const glass = new THREE.Mesh(
    faceGeometry(width - 0.03, height - 0.03, radius - 0.015),
    fader.add(new THREE.MeshBasicMaterial({ color: GLASS })),
  );
  glass.position.z = depth / 2 + 0.004;
  glass.renderOrder = 2;
  group.add(glass);

  const canvas = document.createElement('canvas');
  canvas.width = Math.round(points[0] * density);
  canvas.height = Math.round(points[1] * density);
  const ctx = canvas.getContext('2d');
  const texture = new THREE.CanvasTexture(canvas);
  texture.colorSpace = THREE.SRGBColorSpace;
  texture.anisotropy = anisotropy;
  texture.minFilter = THREE.LinearMipmapLinearFilter;
  texture.magFilter = THREE.LinearFilter;

  const screen = new THREE.Mesh(
    faceGeometry(width - 2 * bezel, height - 2 * bezel, Math.max(radius - bezel, 0.02)),
    fader.add(new THREE.MeshBasicMaterial({ map: texture })),
  );
  screen.position.z = depth / 2 + 0.008;
  screen.renderOrder = 3;
  group.add(screen);

  return {
    group,
    fader,
    ctx,
    texture,
    points,
    density,
    size: { width, height, depth },
    screenSize: { width: width - 2 * bezel, height: height - 2 * bezel },
  };
}

export function createPhone(anisotropy) {
  return createScreenDevice({
    width: 1.46,
    height: 3.02,
    depth: 0.15,
    radius: 0.25,
    bezel: 0.055,
    points: [390, 844],
    density: 2,
    bodyColor: PALETTE.ink,
    anisotropy,
  });
}

export function createTablet(anisotropy) {
  return createScreenDevice({
    width: 4.2,
    height: 2.97,
    depth: 0.13,
    radius: 0.2,
    bezel: 0.09,
    points: [1180, 820],
    density: 1.5,
    bodyColor: PALETTE.ink,
    anisotropy,
  });
}

export function createTelevision(anisotropy) {
  const tv = createScreenDevice({
    width: 6.6,
    height: 3.79,
    depth: 0.14,
    radius: 0.07,
    bezel: 0.09,
    points: [1280, 720],
    density: 1.5,
    bodyColor: '#1F2B38',
    anisotropy,
  });
  const { group, fader } = tv;
  const bottom = -tv.size.height / 2;

  for (const x of [-2.2, 2.2]) {
    const foot = new THREE.Mesh(slabGeometry(0.14, 0.3, 0.5, 0.03), solid('#1F2B38', fader));
    foot.position.set(x, bottom - 0.13, 0);
    foot.renderOrder = 1;
    group.add(foot);
  }

  const consoleTop = bottom - 0.28;
  const table = new THREE.Mesh(slabGeometry(8.3, 0.4, 1.7, 0.07, 0.03), solid('#E7DED2', fader, 0.8));
  table.position.set(0, consoleTop - 0.2, 0.15);
  table.renderOrder = 1;
  group.add(table);

  const box = new THREE.Mesh(slabGeometry(0.66, 0.2, 0.66, 0.06), solid(PALETTE.ink, fader, 0.4));
  box.position.set(2.75, consoleTop + 0.1, 0.5);
  box.renderOrder = 1;
  group.add(box);

  const light = new THREE.Mesh(
    faceGeometry(0.03, 0.03, 0.015),
    fader.add(new THREE.MeshBasicMaterial({ color: PALETTE.sageLight })),
  );
  light.position.set(2.75 + 0.24, consoleTop + 0.1, 0.5 + 0.335);
  light.renderOrder = 2;
  group.add(light);

  return tv;
}

export function createRemote() {
  const group = new THREE.Group();
  const fader = createFader(group);

  const shadow = softShadow(0.3, 1.0);
  shadow.position.set(0, -0.04, -0.08);
  fader.add(shadow.material);
  group.add(shadow);

  const body = new THREE.Mesh(slabGeometry(0.3, 1.0, 0.06, 0.1, 0.015), solid('#D3D9DE', fader, 0.35));
  body.renderOrder = 1;
  group.add(body);

  const dark = () => fader.add(new THREE.MeshBasicMaterial({ color: '#27323D' }));
  const pad = new THREE.Mesh(faceGeometry(0.2, 0.2, 0.1), dark());
  pad.position.set(0, 0.3, 0.034);
  pad.renderOrder = 2;
  group.add(pad);
  for (const [x, y] of [[-0.06, 0.08], [0.06, 0.08], [-0.06, -0.06], [0.06, -0.06]]) {
    const button = new THREE.Mesh(faceGeometry(0.07, 0.07, 0.035), dark());
    button.position.set(x, y, 0.034);
    button.renderOrder = 2;
    group.add(button);
  }

  return { group, fader };
}

/** A flat panel showing a canvas, used for the dial layer and the language chips. */
export function createPanel({ width, height, pixels, anisotropy, fog = true }) {
  const canvas = document.createElement('canvas');
  canvas.width = pixels[0];
  canvas.height = pixels[1];
  const texture = new THREE.CanvasTexture(canvas);
  texture.colorSpace = THREE.SRGBColorSpace;
  texture.anisotropy = anisotropy;
  const material = new THREE.MeshBasicMaterial({
    map: texture,
    transparent: true,
    depthWrite: false,
    side: THREE.DoubleSide,
    fog,
  });
  const mesh = new THREE.Mesh(new THREE.PlaneGeometry(width, height), material);
  return { mesh, material, texture, ctx: canvas.getContext('2d'), canvas };
}
