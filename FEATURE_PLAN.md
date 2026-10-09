# FEATURE_PLAN — overnight 2026-10-08

Research is for **mechanics only**. Nothing below copies wording, content, images, names or branding from Tactus Therapy, Relish or "A Workbook for Aphasia".

## 1. Competitor mechanics (Tactus Therapy, 19 apps) and what Clarity already has

| Tactus app | Mechanics worth knowing (own words) | Clarity equivalent today |
|---|---|---|
| Language Therapy 4-in-1 / Comprehension / Reading / Writing | Word↔picture matching by listening or reading; 2–6 choices; hint = audio/text cue and counts the item as *not first-try correct* but still lets the user finish; letter-tile spelling; auto-advance; hide-score toggle; child-friendly filter; own words/photos | Multiple choice (always 4 options, no picture support); no cueing; no hide-score; no custom content |
| Advanced Language / Advanced Comprehension / Advanced Reading | Sentence/paragraph level; hint highlights the relevant text; "look back" at passage; read-aloud; self-rating of understanding after each passage; field-size 2/3 choices; "quick assessment" classifies levels as too easy (>90%), too hard (<50%) or right | `passage` field + MC exists; no look-back/hint/read-aloud/self-rating; AdaptiveDifficultyStore + baseline cover level fit |
| Naming / Advanced Naming | Cueing hierarchy (meaning cue, first sound, reveal) chosen by user; app records *which cue* led to success; self-record to compare; naming test report by category; own photos | None: no hint system at all; no image support in `ExerciseItem` |
| Number Therapy | Hear/see number, pick or type it; 30 categories (time, money, phone…); custom phone numbers; speak with cue hierarchy; reports by level | Only static number-sequence MC items |
| Category Therapy | Find / classify / add-one / exclude category tasks, concrete↔abstract difficulty | `categoryCrossOut` ≈ "exclude"; word association; no "add one"/"classify" |
| Conversation Therapy | Topic cards with easier question kinds (describe, define, remember, decide, feel) and harder kinds (infer, predict, narrate, evaluate, brainstorm); partner scores the *target behaviour* as correct / approximate-or-cued / incorrect; groups up to 4 | None (tvOS two-player mode is quiz-based, not conversational) |
| Visual Attention Therapy | Cancellation grids; test (any order) vs practice (enforced left→right, top→bottom); flashing sidebar anchor; timer; accuracy by screen quadrant; errorless | None |
| Spaced Retrieval Therapy | Up to 3 personal targets; expanding intervals with timers; per-target data; email report | None |
| Apraxia / Speech FlipBook / Dysphagia / AlphaTopics AAC | Video modelling, articulation word lists, clinician swallowing handouts, AAC letter boards | Out of scope (video/AAC/clinical) |

## 2. Relish article — principles (own words)
Stage-appropriate challenge (multi-step goals early, simpler steps + calming input later); chunk tasks with gentle prompts; calm carer-led activity in late stages; reminiscence/identity support; orientation and routine tools (day/date clocks, reminders). The article does not discuss errorless learning, so that is from the clinical literature, not from it.
**Takeaways for Clarity:** orientation card on Home (F1), hints that never "fail" the user (F3), personal spaced-retrieval targets (F5), calm low-text activities (F6), reminder routines (F9).

## 3. Existing backlog check (from the codebase; there is no CLAUDE.md in the repo)
- Exercise model has **no image support** (`ExerciseItem` = prompt/options/answer/explanation/passage). Custom photos need a data-model + storage decision → not tonight.
- iOS has **no text-to-speech at all** (only ClarityTV uses `AVSpeechSynthesizer`). F3/F4/F8 read-aloud need a small shared iOS speech-output helper; voices for some locales (Amharic, Armenian, Punjabi, Gujarati…) may not exist, so those buttons must hide gracefully.
- Notifications: single daily time (`NotificationManager`), streak warning, welcome back.
- Caregiver settings live in `UserDefaults` with research-export audit records (`TrajectorySettingsStore` pattern); personal text lives in the Keychain (`KeychainHelper`, used by notes and PIN).
- Localisation pattern: one `switch` per string in `AppLanguage.swift` (1,295 lines). New strings tonight use a compact dictionary-based helper (`FeatureStrings`) in a new file so each feature's 16 languages sit together.

## 4. Ranked table

| # | Feature | Source / inspiration | Aphasia value | Dementia value | Effort | Translation burden | iOS / tvOS | Tonight? |
|---|---|---|---|---|---|---|---|---|
| F1 | Today orientation card | Relish (orientation) | low | **high** | S | none (DateFormatter) + 3 UI strings | iOS (tvOS follow-up) | **yes** |
| F2 | Answer-choice count 2/3/4 | Tactus field size | **high** (reduces load) | high | S | ~4 UI strings | iOS (tvOS reads same setting later) | **yes** |
| F3 | Cueing ladder (word-finding) | Tactus naming cues | **high** | medium | M | ~8 UI strings; cues derived from data | iOS | **yes** |
| F4 | Number skills (generated) | Tactus Number | **high** | medium | L (needs iOS TTS helper) | UI strings only | iOS | yes if time |
| F5 | Spaced retrieval (personal targets) | Tactus SRT + literature | low | **high** | L | UI strings; targets are user text | iOS | yes if time |
| F6 | Visual scanning / cancellation | Tactus VAT | **high** (neglect) | medium | M | few UI strings | iOS | yes if time |
| F7 | Conversation starters | Tactus Conversation | high | high | L (content) | high (content) | iOS | English only; hidden elsewhere |
| F8 | Paragraph reading with supports | Tactus Adv. Reading | **high** | low | L (content) | high (content) | iOS | English only; hidden elsewhere |
| F9 | Multiple reminder times | backlog | medium | **high** | S | ~4 UI strings | iOS | **yes** |

Re-rank note: none. Order kept as given; where the plan says "if time", I stop at the first feature that is not green.

### Not tonight (proposals only)
- **Caregiver email signup** — needs a backend and a privacy-policy/App-Store privacy-label change (new data collected). Purpose TBD.
- **iCloud sync / progress-sharing link / multi-profile / clinician mode** — server or privacy-label or data-model changes.
- **AAC board** — large, separate product surface.
- **Custom photos for naming** — blocked on the image-support decision (storage, export exclusion, tvOS).
- **Dysphagia / apraxia video features** — licensed video content, clinical.
- **tvOS voice input, ADL step-sequencing templates, functional health-literacy reading** — ADL templates and health-literacy are partly covered by F8 (labels/cards passages) and the existing Sequencing exercise.

## 5. Design notes
(Appended per feature before coding.)

### F1 — Today orientation card (design note, written before coding)
- `OrientationCardView` on Home (iOS only; tvOS hidden): weekday + long date via `DateFormatter` with the app language's locale and a **Gregorian** calendar (avoids Persian/Hijri calendars surprising US households), part of day from the hour (05–11 morning, 12–16 afternoon, 17–20 evening, else night) with an SF Symbol so colour/text are never the only signal.
- Caregiver toggle in a new "Practice Supports" card in Therapy Settings (`PracticeSupportSettings.showOrientationCard`, default on, UserDefaults, not exported).
- Strings: `FS` (new `FeatureStrings.swift`) — `L(...)` requires all 16 languages at compile time. Not using the `AppLanguage` per-string switch because that file is already 1,295 lines; same `LanguageManager.currentLanguage` source of truth.
- Re-reads the clock when the scene becomes active (a card left open across midnight stays correct).
- Accessibility: card is one VoiceOver element reading "Today: weekday, date, part of day".

### F2 — Answer-choice count (design note)
- `PracticeSupportSettings.answerChoiceCount` ∈ {2,3,4}, default 4 (= unchanged behaviour). Applied only in `ExerciseContainerView.initializeSession` as a *presentation* filter on items of types `multipleChoice`, `sentenceCompletion`, `analogyChoice`, `categoryCrossOut` with ≥4 options. `yesNo`, `factOrOpinion`, `comparison`, `homonym`, `sequencing`, `openEnded`, `matching`, `minimalPairs` are excluded.
- Always keeps `correctAnswer`; distractors are dropped deterministically: rank distractors by a stable FNV-1a hash of `prompt + option` and keep the lowest `n-1`. Stable across launches (item UUIDs are not).
- Does not touch AdaptiveDifficultyStore, baseline assessment (separate engine/view) or validator rules; the stored catalogs are unmodified. Side effect to document: fewer choices raises chance accuracy, so adaptive accuracy under a 2-choice setting is easier by construction. Surfaced in the caregiver subtitle.

### F3 — Cueing ladder (design note)
- Eligible: exercises whose `type == .sentenceCompletion` or whose `trackedType` is `.sentenceCompletion`, `.wordAssociation`, `.completeTheSaying` (word-finding shaped items; options are words/short phrases). Only in `MultipleChoiceView` on iOS.
- Ladder: **Hint 1** = meaning cue: the item's own explanation with every occurrence of the answer masked (only if the answer is ≥3 characters and fully masked; verified over every bundled catalog item), falling back to a category cue (the exercise title without its "(Easy)" qualifier); **Hint 2** = first letter of `correctAnswer` ("Starts with: X"; skipped if the first character isn't a letter); **Hint 3** = reveal (correct option outlined + checkmark + "answer shown" caption). Generated from existing data; no new content.
- Scoring: a cued correct answer still advances the session and counts toward the displayed score (no-fail feel), but is **not** first-try-correct and is reported to the adaptive store as not-independently-correct (`correct && cueLevel == 0`). Session export gains additive fields `cuedItems` and `cueLevelCounts` ([h1,h2,h3] by highest level used per item); `firstTryCorrect` now means *independent* first try. No text, names, or free text are added to the export.
- Caregiver toggle "Word-finding hints" (default on).

### F4 — Number skills (design note)
- New iOS-only screen `NumberSkillsView` reachable from a Home card (hidden on tvOS). Categories: time, price, phone, date, count, mixed. Modes: hear-and-pick (2/3/4 choices, reusing the caregiver choice count) and hear-and-type (numeric keypad; dates are excluded from typing because only the day number would be typed).
- `NumberDrillGenerator` (pure, seedable, unit-tested over all 16 locales × 5 categories): times via `DateFormatter` "jm" (12 h or 24 h per locale), prices via `NumberFormatter` USD, counts via locale numerals, dates "MMMMd" (Gregorian). Distractors are near-misses (±5/10/15 min, ±$1/50¢, transposed digits, ±1/10). Typed answers compare ASCII digits extracted from any numeral system, ignoring leading zeros.
- **iOS had no TTS.** Added `SpeechOutput` (AVSpeechSynthesizer, 0.85× rate, duck others). `AVSpeechSynthesisVoice(language:)` is nil for Gujarati, Farsi, Punjabi, Armenian, Amharic and Tagalog on the Mac I checked (see report), so those languages automatically fall back to "number shown → find it / type it" instead of a dead listen button.
- Personal phone number: caregiver card field → `NumberSkillsStore` (Keychain, device-only). A unit test sets a number and asserts it (and "555") never appears in `ResearchExportManager.generateExport()`. With no personal number, phone questions use the 555-01xx range reserved for fiction.
- Results are not written to the research session log or insight inputs (a new `exerciseType` could skew InsightEngine/Recommendation logic); a completed set counts as practice for streak/widget/reminders only.

### F5 — Remember It / spaced retrieval (design note)
- Caregiver adds up to 3 targets (question + answer) in a new Therapy Settings card; stored as JSON in the **Keychain** (`SpacedRetrievalStore`), like notes. A unit test saves a target and asserts neither its text nor the per-target log leak into the research export or the log.
- Practice (`SpacedRetrievalView`, iOS; hidden on tvOS = documented follow-up): teach (answer shown, say it aloud) → recall at expanding intervals **immediate → 30 s → 1 min → 2 min → 4 min → 8 min** (`SpacedRetrievalScheduler`, pure + unit-tested). A miss shows the answer, the person repeats it, and recall resumes at the **last successful interval** (immediate if none). The person self-scores ("I remembered" / "I needed help"); free-text answer matching was rejected as too brittle for aphasia/dementia.
- Filler task between recalls = a normal easy exercise opened in a sheet; the sheet auto-closes when the next recall is due. Idle timer disabled during a run. One target per run (Tactus runs three timers at once; deferred).
- Caregiver log per target: id, date, best interval, misses, completed — **no text**; shown beside each target ("Best: 4 min · Oct 8").
- Not wired into the research export or insight inputs. A completed run counts as practice for the streak/widget/reminders.
- Clinical-adjacent copy ("Remember It", "I needed help", "That's okay…") is translated by me for all 16 languages but flagged in REVIEW_QUEUE.md for native/SLP review.

### F6 — Visual scanning / cancellation (design note)
- `ScanGrid` model + generator (pure, seedable, unit-tested): 6×8 grid, 12 targets, exactly 3 per screen quadrant. Levels: 1 = star among clearly different shapes, 2 = filled circle among similar circles, 3 = digit 6 among look-alike digits. Language-light (only the UI chrome is translated).
- `VisualScanningView` (iOS; hidden on tvOS): **Test** = any order, timer; **Practice** = targets must be found in reading order (left→right, top→bottom); out-of-order taps get a shake + haptic and no penalty; optional pulsing marker with an arrow on the left edge (solid when Reduce Motion is on). The grid is forced left-to-right even in Arabic/Farsi because the task trains scanning from the left edge.
- Results: found/total, per-quadrant percentage laid out like the screen (always LTR), extra (false) taps, time (test only). Found cells carry a check icon, not only a colour.
- Not written to the research export; counts as practice for streak/widget/reminders.

### F8 — Paragraph reading with supports (design note)
- Content is a dedicated model, not catalog `Exercise`s (supports needed per-question evidence sentences): 9 original passages (3 per level) incl. an appointment card, a lunch menu, a mock medicine label (fictional drug "Relivex", marked "practice example"), a bus notice, a note to a neighbour, recipe steps. 3 questions each, 3 options each, evidence sentence index per question. Wording is my own; nothing copied from Tactus or the Workbook (only the *format* "passage → questions" is shared).
- Supports: read-aloud (new `SpeechOutput`), tap a sentence to hear it, **look back** toggle, **hint** = highlights the evidence sentence(s) with an arrow icon and bold (not colour alone); using it records the question as "with a hint". Wrong answers dim that option and allow another try (no-fail). After each passage the person self-rates understanding (3 options), stored locally only.
- **English only.** `ReadingPassage.isAvailable(for:)` is true only for English; the Home card is hidden in every other language (never English-in-a-translated-UI, never an empty screen). Translating the 9 passages is a content job for the next pass.
- Not in the research export; no tracked type (not an `Exercise`). Counts as practice for streak/widget/reminders.

### F7 — Conversation starters, partner mode (design note)
- Picture-free topic cards: 11 topics × 8 original questions, one per kind. Easier kinds = describe, remember, decide, feel; harder = predict, explain, evaluate, brainstorm. (The easier/harder split and partner-scores-behaviour idea are the mechanics taken from Tactus Conversation; kinds are generic communication-skill categories and all wording is mine.)
- `ConversationStartersView` (iOS): Easier / Harder / Mixed, optional "show only the question type", 8-card deck with distinct topics, read-aloud, a "Listen for: …" behaviour line, partner scores **Yes / With help / Not yet**. Session tally only; nothing stored or exported.
- English only: hidden in every other language. tvOS two-player integration is a follow-up.
- The behaviour lines interpret performance → English-only, listed in REVIEW_QUEUE for SLP review.
