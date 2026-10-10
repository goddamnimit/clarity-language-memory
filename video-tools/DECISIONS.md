# Decisions log: Clarity tour video

Autonomous run, 2026-10-09. Nothing here was committed, pushed or deployed. No Swift file
and no `website-update/index.html` content was changed.

## Items to double-check first

1. **Farsi item needs a native-speaker look.** The right-to-left demo shows one existing
   item, copied verbatim by `scripts/extract-farsi.py`:
   - File: `CogniLink/FarsiLanguageExerciseData.swift`, exercise `categoryCrossOutEasy`
     ("دسته‌بندی — ساده"), **item index 5** (zero-based; the sixth item).
   - Options shown: دست (dast), پا (pā), چشم (cheshm), کتاب (ketāb). Correct: کتاب (ketāb).
   - Prompt shown: the exercise's own `instructions` string.
   - Header shown: "سوال 1 از 5", built from the app's `questionLabel` and `ofLabel`
     Farsi strings in `ExerciseContainerView.swift`, in the same order the app builds it.
   - I wrote no Farsi. Please have a native speaker confirm the item, and that the
     transliterations in brackets should appear on screen as they do in the app data.
   - The English screen just before the flip shows my own translation of the same item
     (Hand, Foot, Eye, Book) so the mirroring is easy to see.
2. **"Speak your answers" is shown on an English question only.** Project memory notes
   that 6 of the 16 languages have no on-device speech recognition, so the microphone is
   not drawn on the Farsi screen. The caption says "Tap an answer, or say it aloud."
3. **"Offline" and "Private" in the closing line** follow your accuracy list and the
   site's own copy. The app also has a user-initiated anonymous research export; the
   video does not mention it.
4. **Screen recreations are stylised, not screenshots.** Layouts use the website palette,
   not the app's system colours. Real strings were used where I could find them in the
   source: "Good to see you!", "Start", "Start Assessment", "Question 3 of 15",
   "Great effort!", "Two Player Mode", "Take turns and practice together!",
   "Pass the remote to Player 2!", "Fantastic effort from both players!",
   "day streak", "Weekly Goal", "4/5 sessions this week", the notification title
   "Clarity: Language & Memory" and body "Time for your Clarity practice."
   Invented for the mockups: the three caregiver insight lines, "A summary you can save
   or print.", "Session complete", "5 questions", "Personal best: 9 days" (the label
   exists in the app; the numbers are made up), and all example questions.
5. **Caregiver insight wording** is practice-focused and my own ("Practice has been
   steady this week." and so on). It does not quote InsightEngine.
6. **The site's hero still says "19K+ Therapy Items".** Left untouched as instructed.
   The count supports 18,000+, not 19,000+.
7. **The existing home page loads Google Fonts** (fonts.googleapis.com, fonts.gstatic.com).
   That is pre-existing and unchanged; the video page itself makes no off-site requests.

8. **The MP4 came from the fallback path.** You approved videowright first with the
   frame-stepper as fallback; videowright failed here (details below). The film and its
   frames are identical either way, because both paths drive the same `seek(t)`.
9. **The MP4 is 60 fps, H.264 High level 5.0, video only (no audio track).** That is a clean
   master, not an App Preview export; it will need re-exporting to Apple's specification.

## videowright attempts

1. **Run 1 failed at start-up.** videowright 0.1.1 from npm ships browser entry files that
   import `src/index.js`, which is not in the package (`out/videowright-attempt1.log`).
   Fixed locally with `scripts/patch-videowright.mjs`.
2. **Run 2 rendered correctly-looking progress** on an earlier version of the film; I stopped
   it at 33 s because the film had changed since it started (`out/videowright-attempt2.log`).
3. **Run 3 (final code) failed at 34.9 s** with `page.screenshot: Timeout 30000ms exceeded`
   (`out/videowright-render.log`). videowright launches Chromium without GPU flags, so WebGL
   runs in software at roughly 35 to 100 seconds per second of film, and the Mac was under
   very heavy load from unrelated work at the time (load average above 100).
4. **The partial file from run 3 also showed a timing fault.** Its frames ran about 3 s ahead
   of the film (frame 0 showed the 3-second mark). videowright boots the page in real time
   and only then switches to its virtual clock, so `ctx.clock()` already includes the boot
   time when capture starts. I deleted that partial file.

I stopped there, as the brief allowed. The videowright project is still in place
(`videowright.config.ts`, `segments/clarity-film/`, `videos/clarity_tour/`,
`npm run render:videowright`) but **should not be used for a master until the clock offset
is fixed**, for example by starting the film clock when videowright engages virtual time.
That fix is not written or tested.

## Exercise count

Read-only count of `ExerciseItem(` literals in the per-language data files:

```
English 1216, Spanish 1159, Hindi 1206, Gujarati 1205, Chinese 1209, Farsi 1206,
Korean 1167, Vietnamese 1027, Arabic 1023, Portuguese 1217, Tagalog 1235, Punjabi 1239,
Armenian 1114, Japanese 1058, French 1212, Amharic 1103
TOTAL, 16 shipped languages: 18596   (Russian and Ukrainian are preview and not counted)
```

`OVERNIGHT_REPORT.md` gives 18,572 of these as visible to users. On-screen line, as
approved: "More than 18,000 practice questions."

## Design and content decisions

| Decision | Why |
|---|---|
| Emphasis words use a slightly deeper sage (`#5F9282`) than the site's `#7BA898` | The site sage on cream is about 2.4:1 contrast. The deeper tone is about 3.2:1, which passes for large text, and several emphasised words carry meaning ("18,000", "PIN"). The wordmark's period, rings and UI accents keep the exact site sage. |
| Captions are the large on-screen lines themselves, not a separate subtitle strip | The film is silent, so the copy is the caption. Device scenes put it in a left column; wide scenes put it in a lower band. Every line is on screen for at least 2.6 s. |
| Small scene labels ("The app", "Languages" and so on) are decorative and are not in `captions.vtt` | They repeat the scene's subject and would clutter the caption file. |
| Language halo: the ring settles with Farsi and Arabic at the top and both light up; the phone then turns once and returns right-to-left | The storyboard said the Farsi chip "glides in". Keeping the two chips in the ring avoided a collision with the phone and reads more calmly. |
| Chips show native names only, with "Español" and "Français" capitalised | Matches the site's native names; capitals are consistent with the other chips. No flags, as approved. |
| The difficulty dial has no words or numbers | The person practising never sees a level, so the dial is an abstract picture of one. |
| PIN pad: four dots fill, no key is highlighted | Avoids implying any particular PIN. |
| Television, set-top box and remote carry no logo; the notification icon is a plain sage square with a "C" | No third-party marks. The "C" tile is a stand-in, not the real app icon. |
| App Store badge is a dashed box labelled "App Store badge placeholder" | Awaiting the official artwork. |
| Closing shot: the three devices fade out completely before the wordmark | They competed with the text when left in view. |
| Below 560 px wide the player uses larger copy and hides the scene labels | On a 390 px phone the standard layout put captions near 12 px. Compact captions are about 16 px. The MP4 uses the standard layout. |
| While the control bar is showing, lower-band captions move up above it on a soft cream backing | Otherwise the seek bar sat on top of the caption whenever the film was paused. |
| The centre play button appears only on the poster | After start it covered the picture when paused; the control bar and click-anywhere handle play and pause. |
| Poster frame is t = 12.4 s (phone with a correct answer) | Shows the product and a caption in one still. |
| New home-page section is English only | Like the newer feature cards, it has no `data-i18n` keys, so it does not switch with the site's language picker. |
| The embed frame shows the poster as a CSS background | So a picture is there before the lazy iframe loads. This is the only weight added to the home page's first load (about 43 KB). |
| Device screens repaint at up to 30 times a second during live playback and on every frame during capture | Saves battery on phones; the time is quantised, so each frame is still a function of the clock alone. |

## Tooling decisions

| Decision | Why |
|---|---|
| three.js is bundled once with esbuild into `vendor/three.min.js` (567 KB raw, about 143 KB gzip) | three 0.186 no longer ships a minified module build on npm. The bundle keeps only the classes the film imports. Rebuild with `node scripts/vendor-three.mjs`. |
| Inter is shipped as three static weights instead of one variable file | fonttools on the system's Python 3.9 failed to subset a partially-instanced variable Inter. |
| Fraunces is cut at optical size 144 for the 300 weights and 72 for the 500 weight | Matches how the site's large headings render with automatic optical sizing. |
| Noto Sans subsets cover only the characters on screen (about 17 KB for nine scripts) | So native names never depend on what fonts a visitor's device has. |
| `video-tools/film/` is an rsync copy of `website-update/video/` made by `npm run sync` | videowright's dev server only serves files inside its own project folder. The copy is git-ignored. |
| `scripts/patch-videowright.mjs` adds a one-line shim inside `node_modules/videowright` | videowright 0.1.1 on npm ships browser entry files that import `src/index.js`, which is not in the package. First render attempt failed on this; the shim re-exports the built library. It runs automatically after `npm install`. |
| **MP4 master rendered with the Playwright frame-stepper, not videowright** (`npm run render`) | videowright did not produce a usable file; see "videowright attempts" below. The frame-stepper opens the same page, calls `seek(i / 60)` for each of the 3,600 frames and pipes PNGs to ffmpeg (H.264 High, CRF 15, preset slow, yuv420p, BT.709 tags, faststart). |
| `index.with-video.html` and `index.with-video.diff` sit in `website-update/` | The iframe path `video/` is relative, so the test page has to be served from the deploy folder. Remove or rename them before dragging the folder to Netlify (steps in the hand-off message). |

## Checks requested in the brief

- `video-tools` and `website-update` are not referenced in `CogniLink.xcodeproj/project.pbxproj`
  (0 matches). The project's file-system-synchronized groups are `CogniLink`,
  `CogniLinkTests`, `CogniLinkUITests`, `ClarityTV`, `ClarityTVTests`, `ClarityTVUITests`
  and `ClarityWidget` only.
- `website-update/` contains no `node_modules` folder.
- `video-tools/.gitignore` ignores `node_modules/`, `out/`, `film/`, `.venv/`, `font-src/`, `.vite/`.

## Commands run

```bash
brew install node                                   # Node 26.11.1, npm 11.20.0
cd CogniLink/video-tools
npm init -y
npm install --save-dev videowright playwright three # videowright 0.1.1, playwright 1.64.0, three 0.186.1
npx playwright install chromium webkit firefox
python3 -m venv .venv
.venv/bin/pip install fonttools brotli
# One-time font downloads into font-src/ from github.com/google/fonts (OFL):
#   Fraunces, Fraunces Italic, Inter, Noto Sans Devanagari, Gujarati, Gurmukhi, Arabic,
#   Armenian, Ethiopic, Noto Sans SC, KR, JP, and their OFL.txt files
.venv/bin/python scripts/extract-farsi.py           # writes website-update/video/js/farsi-item.js
.venv/bin/python scripts/subset-fonts.py            # writes website-update/video/fonts/*.woff2
node scripts/vendor-three.mjs                       # writes website-update/video/vendor/three.min.js
node scripts/patch-videowright.mjs
node scripts/build-captions.mjs                     # writes website-update/video/captions.vtt
node scripts/capture.mjs poster 12.4                # writes website-update/video/poster.jpg
node scripts/capture.mjs stills <times>             # review stills in out/stills/
node scripts/test.mjs                               # browser tests, out/test/
node scripts/sizes.mjs
npm run render:videowright                          # three runs, none usable (see above)
npm run render                                      # frame-stepper -> out/clarity-1080p60.mp4
ffmpeg -i out/clarity-1080p60.mp4 -c copy -bsf:v h264_metadata=colour_primaries=1:transfer_characteristics=1:matrix_coefficients=1 -movflags +faststart out/tagged.mp4
                                                    # adds BT.709 tags without re-encoding; the script now does this itself
```

One slip during setup: the Python venv and `font-src/` were first created one level up, in
`CogniLink/`. They were moved into `video-tools/` straight away and the stray `.venv`
was deleted; nothing else in the repository was touched.

No API, key, paid service or generated media was used. ffmpeg is the Homebrew build that
was already installed.

## Follow-up changes, evening of 2026-10-09 (owner's requests after the first deploy)

- **Closing shot:** the dashed placeholder is replaced by the site's own "Download on the App Store"
  button (same glyph path and pill as `.btn-primary`). It is not Apple's official badge artwork;
  swapping that in needs the SVG from Apple's marketing resources.
- **Home Screen widgets in the film** now follow the two real widget screenshots on the site: dark
  tiles, orange flame, streak count, "Today's exercise", category chip, "WEEKLY GOAL".
- **Page:** note under the video made smaller and fainter; hero stat changed from "19K+" to "18K+"
  to match the count; new "Our promise" section (free, data never sold, not a business); a
  disclaimer paragraph in the footer; a hidden `#story` section with empty paragraphs for the
  owner's own bio and words about his mom. I wrote nothing for those two blocks.
- The promise copy's factual claims were checked against the source: no StoreKit, ad or tracking
  framework is imported anywhere in the three targets, and the project has no accounts or network use.
- The disclaimer is my wording, not legal advice. The page still calls Clarity a "therapy" app and
  companion in its title, hero and footer, which sits awkwardly beside "not a medical device".
- The page's two real widget screenshots show a 0-day streak. They were left as they are.
- `out/netlify-deploy/` is rebuilt from these files and is the folder to drag to Netlify.
- The MP4 was re-rendered so it matches the new closing shot and widgets.

## Deploy folder made drag-ready (owner's request, 2026-10-09 late evening)

- `website-update/index.html` is now the new page (video, promise, story with photos, disclaimer).
  The previous page is the committed version in git (`git show HEAD:website-update/index.html`).
- `index.with-video.html` was removed; the change is recorded in `video-tools/index.with-video.diff`
  (now a `git diff` against the committed page).
- `website-update/CHANGES.md` was moved to `website-CHANGES.md` in the repository root so it is not
  published. `website-update/` holds only `index.html`, `video/` and `images/`.
- `scripts/test.mjs` now tests `index.html`.
