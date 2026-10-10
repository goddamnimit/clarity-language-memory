# Clarity tour video

A 60-second, silent, captioned tour of Clarity: Language & Memory, drawn live in the
browser with three.js, canvas and CSS. This folder is self-contained: no build step,
no CDN, no requests to any other site.

## Embed

Place this where the video should appear (it is already in `index.with-video.html`):

```html
<div class="video-frame">
  <iframe src="video/" title="Clarity: a one-minute captioned tour" loading="lazy"
          allow="autoplay; fullscreen" allowfullscreen></iframe>
</div>
```

```css
.video-frame {
  position: relative;
  max-width: 960px;
  margin: 0 auto;
  aspect-ratio: 16 / 9;
  border-radius: 32px;
  overflow: hidden;
  background: #F7F3EE url('video/poster.jpg') center / cover no-repeat;
}
.video-frame iframe { position: absolute; inset: 0; width: 100%; height: 100%; border: 0; }
```

The poster shows first. The film itself (three.js, fonts, scenes) is fetched only when
the player is at least half on screen, or when the viewer presses play.

## Behaviour

- Autoplay is muted, starts only while the player is visible, and pauses when it
  scrolls away or the tab is hidden.
- With "reduce motion" switched on in the viewer's system settings there is no
  autoplay: the poster and a play button are shown instead.
- Controls: play/pause, restart, seek, mute. Keyboard: Space or K play/pause, R restart,
  M mute, Left/Right skip five seconds.
- Below 560 px wide the copy is set larger so captions stay readable on phones.
- Every on-screen line is also in `captions.vtt` and in a text transcript inside
  `index.html` for screen readers.

## Adding sound later

The film is silent. To add a soundtrack, put the audio file in this folder and set its
path on the player element in `index.html`:

```html
<div class="player" id="player" data-audio="soundtrack.mp3" ...>
```

Play, pause, seek and the mute button already drive it. Playback still starts muted.

## Files

| Path | What it is |
|---|---|
| `index.html`, `css/player.css`, `js/main.js` | The player page and its controls |
| `js/timeline.js` | Every line of on-screen copy and its timing |
| `js/film.js` | Builds the 3D world; `seek(t)` draws any moment of the film |
| `js/scenes/` | One file per scene: camera and device keyframes, screen content |
| `js/screens.js` | Canvas recreations of the app's screens |
| `js/stage.js`, `js/devices.js`, `js/type.js` | Backdrop and camera, device models, kinetic type |
| `js/farsi-item.js` | One exercise item copied from the app's Farsi catalog (generated) |
| `vendor/three.min.js` | three.js, bundled to the classes the film uses (MIT) |
| `fonts/` | Fraunces, Inter and Noto Sans subsets (SIL Open Font License) |
| `poster.jpg`, `captions.vtt` | Poster frame and caption file |

Every frame is a pure function of one clock, so playing, scrubbing and the offline MP4
render all produce the same pictures. The tooling that renders the MP4, subsets the
fonts and runs the browser tests lives outside this folder, in `video-tools/`.

## Editing copy

Change the text in `js/timeline.js`, mirror it in the transcript list in `index.html`,
then run `npm run captions` in `video-tools/` to rebuild `captions.vtt` and confirm the
three match.

The closing shot's "Download on the App Store" button (`.brand__store` in `js/type.js` and
`css/player.css`) copies the button on the main site. It is not Apple's official badge artwork.
