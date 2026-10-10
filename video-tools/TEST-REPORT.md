# Test report: Clarity tour video

Run on 2026-10-09 against the final code, with `node scripts/test.mjs`, `node scripts/sizes.mjs`,
`node scripts/build-captions.mjs` and `node scripts/capture.mjs`. The deploy folder was served by
`scripts/serve.mjs`, a plain static file server (no build step), and the film was exercised
**through the iframe in `index.with-video.html`** as well as directly at `/video/`.

Raw results: `out/test/results.json`. Screenshots: `out/test/*.png`. Review stills: `out/stills/`.

## What was and was not tested

| Environment | Status |
|---|---|
| Chromium 156 (Playwright build, headless) | Tested |
| WebKit 27.2 (Playwright build, the engine behind Safari) | Tested |
| Firefox 157 (Playwright build) | Tested |
| Phone layout: 390 x 844 viewport, 3x pixel ratio, touch, in all three engines | Tested |
| Real Safari on macOS, real Safari on an iPhone or iPad, Chrome on Android | **Not tested.** Playwright's WebKit is the closest stand-in available here. Please open the page on a real iPhone before publishing. |
| Netlify itself | **Not tested**; nothing was deployed. The local server sends the same static files. |

## Controls and behaviour (through the embedded iframe, 1440 x 900)

| Check | Chromium | WebKit | Firefox |
|---|---|---|---|
| Page loads with no script errors | Pass | Pass | Pass |
| Film does not start while the player is off screen | Pass | Pass | Pass |
| Autoplays when scrolled into view | Pass | Pass | Pass |
| Autoplay starts muted | Pass | Pass | Pass |
| Pause button stops the clock | Pass | Pass | Pass |
| Play button resumes | Pass | Pass | Pass |
| Seek slider jumps to 0:30 | Pass | Pass | Pass |
| Restart button returns to 0:00 and plays | Pass | Pass | Pass |
| Mute button toggles | Pass | Pass | Pass |
| Space toggles play and pause | Pass | Pass | Pass |
| Right and Left arrows skip 5 s forward and back | Pass | Pass | Pass |
| M toggles mute | Pass | Pass | Pass |
| R restarts | Pass | Pass | Pass |
| Pauses when scrolled out of view | Pass | Pass | Pass |
| Hero "See how it works" button points at `#video` | Pass | Pass | Pass |
| Direct visit to `/video/` plays | Pass | Pass | Pass |

Mute is wired but there is no soundtrack yet, so it changes state without an audible effect.

## Layout

| Check | Chromium | WebKit | Firefox |
|---|---|---|---|
| Desktop: no horizontal scroll on the page | Pass | Pass | Pass |
| Desktop: iframe aspect ratio | 1.7778 | 1.7778 | 1.7778 |
| Desktop: stage aspect ratio inside the iframe | 1.7778 | 1.7778 | 1.7778 |
| Phone: no horizontal scroll on the page | Pass | Pass | Pass |
| Phone: iframe size | 350 x 197 | 350 x 197 | 350 x 197 |
| Phone: autoplays when visible, tap pauses | Pass | Pass | Pass |

Caption size on the 390 px phone layout (line box height in CSS pixels, same in all three engines):

| Line | Height |
|---|---|
| Opening headline | 27.7 px |
| Opening sub-line | 14 px |
| Left-column captions | 20.9 px |
| Lower-band captions | 18 px |

The sub-line under the opening headline is the smallest text in the copy layer on a phone
(about 11.6 px type). The text inside the device mockups is illustrative and is smaller than that
on a phone; the captions carry the message.

## Reduced motion

Context created with `prefers-reduced-motion: reduce`, same result in all three engines:

- The media query matches inside the iframe.
- After 3.5 s on screen the film has not started and nothing is playing.
- The static poster and the play button are showing (`out/test/*-reduced-motion.png`).
- Pressing play starts the film.

## Network

Every request made while loading the home page, scrolling to the video and playing it was recorded
(`requests` in `results.json`).

- **Video page: 36 files, all same-origin.** `/video/`, `css/player.css`, `poster.jpg`, 18 script
  modules under `js/` and `vendor/`, and 15 `fonts/*.woff2`. No CDN, no analytics, nothing off-site.
  Identical list in Chromium, WebKit and Firefox.
- **Home page:** the only off-site requests are the ones the existing page already makes, to
  `fonts.googleapis.com` and `fonts.gstatic.com` for its own Fraunces and Inter. The embed adds none.

### Transferred size

| What | Files | Raw | gzip | Brotli |
|---|---|---|---|---|
| Video page, everything it loads to play | 36 | 813.7 KB | 339.6 KB | 311.2 KB |
| Added to the home page before the visitor reaches the video (WebKit, Firefox) | 1 (poster) | 42.8 KB | 42.8 KB | 42.8 KB |
| Same, in Chromium | 5 | 65.5 KB | 50.5 KB | 49.1 KB |

Chromium starts loading a lazy iframe earlier than the other two, so on a 900 px tall window it
also fetches the small player shell (`index.html`, `player.css`, `main.js`, `timeline.js`) up
front. In every engine the heavy part (three.js, fonts, scenes) waits until the player is at least
half visible or play is pressed. The whole `website-update/video/` folder is 832 KB on disk.
gzip and Brotli figures are computed locally with Node's zlib; Netlify's exact numbers may differ slightly.

## Fonts and scripts

- `scripts/subset-fonts.py` stops with an error if any on-screen character is missing from its
  source font. It completed for all 15 font files.
- A glyph sheet was drawn inside each engine with the film's own font stack: the 16 native language
  names, the Farsi title, instructions, four options and the "Question 1 of 5" label
  (`out/test/{chromium,webkit,firefox}-glyphs.png`). I inspected all three: every script renders
  with real glyphs, Arabic-script letters join correctly, and there are no empty boxes.
- In the film itself (`*-desktop-t35.3.png`) the Farsi screen is mirrored: back chevron and label
  on the right, progress filling from the right, text right-aligned, the check mark on the left.

## Captions and wording

- `captions.vtt` has 17 cues, generated from the same list the film draws from. The shortest time
  any line is on screen is 2.6 s. The transcript in `video/index.html` matches every cue
  (checked by `scripts/build-captions.mjs`).
- Searched the page, scripts, stylesheet, `captions.vtt` and README in `website-update/video/`
  (excluding the vendored three.js) and the added lines of `index.with-video.diff` for
  treat, cure, heal, improve, clinical, proven, therapy, rehab, recover, patient, diagnose, medical
  and their variants: **no matches**.
- Searched the same files for an operating-system name followed by a number: **no matches**.
- Searched for leftover markers (TODO, FIXME, `console.log`, `debugger`) and for any `http(s)://`
  URL: **no matches**.
- Android appears once, as "Android coming soon".

## Visual review

Stills were captured at 1920 x 1080 from every scene and at the hand-overs between scenes, then
inspected. Two polish passes, plus a third for phones:

**Pass 1** (after the first full render)
- Text inside the phone and iPad screens was too small; all in-device type was enlarged.
- The difficulty dial was faint and half hidden behind the phone; it is now bolder and sits clear of it.
- The phone was small in the languages scene; it now scales up there so the mirrored layout reads.
- The caregiver scene sat small in the frame; the camera is closer.
- A reminder banner covered the Home Screen widgets; the widgets moved below it.
- The departing iPad left a sliver at the frame edge during the Apple TV scene; it now exits fully.
- Active player label on the TV was white on sage; now dark text on a tinted, outlined pill.
- The remote sat over the TV picture; it now rests beside the screen and crosses during the hand-over.
- Closing shot: fogged devices showed as flat cream blocks over the rings; they now fade out.

**Pass 2** (hand-overs and timing)
- The languages caption arrived while the camera was still pulling back and overlapped the phone;
  it now starts 0.6 s later and the camera settles sooner.
- "Free. Offline. Private." appeared over the still-large television; the devices now retreat
  first and the line starts at 0:53.9.
- The poster was captured before the 3D layer had redrawn (it showed text only); recaptured.

**Pass 3** (phone and paused states)
- Captions were about 12 px on a 390 px phone; a compact layout now enlarges the copy.
- The control bar covered lower-band captions when paused; captions now step above it.
- The centre play button covered the closing wordmark at the end; it now shows only on the poster.
- The embed's 1 px border made the frame 1.7807:1; it is a shadow ring now and the ratio is exact.

Known cosmetic point: on the poster, the play button overlaps the last word of the caption.

## MP4 master

`out/clarity-1080p60.mp4`, rendered by `npm run render` (Playwright frame-stepper and ffmpeg).

| Property | Value |
|---|---|
| Size | 23,800,543 bytes (23.8 MB) |
| Video | H.264 High, level 5.0, 1920 x 1080, yuv420p, BT.709 |
| Frame rate and length | 60 fps, 3,600 frames, 60.000 s |
| Bit rate | about 3.2 Mbit/s (CRF 15, preset slow) |
| Audio | None (no audio track) |
| Container | MP4 with the index at the front (faststart) |

- Frames pulled from the file at 0, 12.4, 25.5, 35.3, 50.6 and 59.9 s were inspected
  (`out/mp4-check/fb-sheet.png`): every scene is present, the first frame is the opening rings and
  the last is the closing wordmark.
- Frames at 16.9 s and 41.8 s were compared with stills captured straight from the page at the
  same times: PSNR 44.0 dB and 42.7 dB, which is the difference expected from video compression alone.
- Not checked: playback in QuickTime or on a device (I could not watch it play), and Apple's App
  Preview requirements, which you said you would review separately. As rendered it is 60 fps and
  has no audio track.
- The videowright render path did not produce a usable file; `DECISIONS.md` has the account.

## Repository state

```
$ git status --short
?? video-tools/
?? website-update/index.with-video.diff
?? website-update/index.with-video.html
?? website-update/video/
```

Only new, untracked files in the two expected places. No tracked file is modified, so there are no
Swift changes and `website-update/index.html` is byte-for-byte as it was. Nothing was committed.

## Changes after this report was written (same evening)

The sections above describe the first complete build. Later that evening, at the owner's request:

- The embed page became `website-update/index.html` (the report above calls it `index.with-video.html`),
  and the video section moved to directly after the hero.
- The film's closing shot and Home Screen widgets changed, and the page gained a promise section, a
  story section with five photos, and a footer disclaimer.
- The MP4 was re-rendered: 23,540,111 bytes, otherwise the same format. Frames at 0, 12.4, 35.3,
  45.4 and 59.9 s were inspected, and the frame at 45.4 s compared with a page still (PSNR 41.8 dB).
- The full three-browser suite was **not** re-run after these changes. What was checked: the new
  sections render without script errors or sideways scroll at 1280 px and 390 px in Chromium, all
  images load, and the live site returns the page, `/video/` and the images.
