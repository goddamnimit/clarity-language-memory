# Known Issues

## ClarityTV: prompt text descenders clipped in question ScrollView

**Status:** open — deferred from the 2026-07-09 overlap fix (App Store rejection, Guideline 4, build 1.1 (3)). Deliberately NOT fixed in that commit.

**Symptom:** On TV exercise screens, the question prompt can render with its last visible line's descenders cut off (e.g. "What keeps you dry in the rain?" with the bottom of "y"/"p" clipped), and long prompts can be visually truncated mid-line. The text is inside a ScrollView so it is technically scrollable, but on tvOS there is no affordance and users won't scroll it.

**Where:** the prompt area shared by the grid exercise views —
- `ClarityTV/TVOptionGridView.swift` (~line 33): `ScrollView` with `.frame(maxHeight: 280)` inside the `geo.size.height * 0.35` prompt band.
- `ClarityTV/TVMultipleChoiceView.swift` (~line 64): same pattern.

**Why it happens:** the prompt band is a fixed 35% of the GeometryReader height and the ScrollView caps at 280pt; when the container header (exercise title + instructions) wraps tall, the band compresses and the ScrollView clips the text instead of the text scaling further down (`minimumScaleFactor(0.7)` doesn't engage because `fixedSize(horizontal: false, vertical: true)` lets the text keep its full height inside the scroll content).

**Unrelated to the overlap fix:** the 2026-07-09 fix only changed the option-grid rows (fixed → flexible tile heights), the footer spacer, and the open-ended answer bounds. No lines in the prompt ScrollViews were touched; the clipping reproduces identically before and after that change.

**Suggested direction for the follow-up:** drop `fixedSize` and let `minimumScaleFactor` engage against the band height, or size the prompt band to content with a sensible cap instead of a hard 35%.

## Content rebuild (2026-07-15): items needing native-speaker review

Status: fixes staged as uncommitted working-tree changes per language (not yet committed — see commit-plan note below). Each item below is functionally correct (validator-clean, no placeholder/corruption) but a native speaker should sanity-check the specific word/phrasing choice before shipping.

**French**
- `FrenchCognitionExerciseData.swift:172-174` — audit flagged these as a possible "Jeanne d'Arc-era" factual error (dates ~1361, "À 11 ans"). Checked against history: **false alarm** — these lines are unrelated trivia items (franc currency adoption date, primary-school-ending age), there is no Joan of Arc content anywhere in the French files (grepped all 5 files). No fix needed; the earlier flag was a misread by the fixing agent.

**Portuguese** (`PortugueseLanguageExerciseData.swift` unless noted)
- "Ele consertou a **pia**" item — distractors "tia", "magia" chosen as rhyming foils; confirm they read naturally.
- **RÁDIO** used as the radius bone (FÊMUR/TÍBIA analogy item) — correct pt-BR but also means "radio" the device; bone context should disambiguate but worth a glance.
- **REAL/CENTAVO/MOEDA** vs JAQUETA item — MOEDA is a category word rather than a denomination; a native speaker may prefer "NOTA".
- "Quem não tem cão, caça **com** gato" — left as the common variant; purists prefer "como gato".
- **DEFECT, not yet fixed:** `PortugueseFunctionalSkillsExerciseData.swift:482-610` — the "Passos de Culinária" (Cooking Steps) exercise title doesn't match its content: only 6 of the 20 items are actually about cooking (Preparar um Chá, Fazer um Sanduíche, Passar Café, Fazer uma Salada, Preparar Ovos Mexidos, Cortar Melancia). The other 14 are unrelated life-skill sequences (Lavar as Mãos, Enviar uma Carta, Escovar os Dentes, Fazer uma Ligação, Vestir-se pela Manhã, Sair de Casa, Limpar a Mesa, Plantar uma Flor, Lavar Roupa, Limpar os Sapatos, Ligar o Computador, Fazer Compras, Acender uma Vela, Regar as Plantas). Queued for a future fix pass: either retitle the exercise to something accurate for mixed general life-skill sequencing, or split it into a real cooking-steps exercise (the 6 cooking items) plus a separate general life-skills sequencing exercise (the other 14).

**Armenian**
- `ArmenianLanguageExerciseData.swift` prefix/suffix rebuild (~495-514) — "զինավոր" item uses a somewhat archaic/rare word; internally consistent but a native speaker may want to swap the whole item.
- `ArmenianHardExercisesData.swift:389` — reconstructed corrupted option as "Շուկա" (market); it's a distractor, not the answer, but confirm the reconstruction is the intended word.
- "հացատուն" (bakery, ~line 479 area) vs the more colloquial "փուռ" — worth a native check.
- **DEFECT, not yet fixed:** `ArmenianCognitionExerciseData.swift` has 5 leftover homoglyph corruptions (Latin letters spliced into Armenian words) that slipped through the 17327d0 rebuild's verification. Queued for a future fix pass:
  - Line 846 — `explanation`: "...խոսելu համար" (Latin `u` should be Armenian `ու`)
  - Line 1222 — `explanation`: "...երեկoյան՝ ընթրիք" (Latin `o` should be Armenian `ո`)
  - Line 1261 — `prompt`: "Բժիշk : Հիվանդանոց..." (Latin `k` should be Armenian `կ`)
  - Line 1326 — `correctAnswer`: "Ոtք" (Latin `t` should be Armenian `տ`)
  - Line 1479 — `options`: "Մանրադիտak" (Latin `ak` should be Armenian `ակ`)

**Punjabi**
- `PunjabiHardExercisesData.swift:234` — proverb "ਕੋਹ ਨਾ ਚੱਲੀ, ਬਾਬਾ ਤਿਹਾਈ" (script corruption fix confirmed correct: Bengali "কো" → Gurmukhi "ਕੋ"). Wording matches the standard form of this idiom as best determined without a live source-verification tool, and the explanation ("doing barely any work and complaining/tiring out anyway") is semantically consistent with it. Flagged, not confirmed — recommend a native-speaker check before treating the wording itself as verified.
- **DEFECT, not yet fixed:** `PunjabiLanguageExerciseData.swift:493` — stray Latin `s` prepended to a Gurmukhi word in a compound-word exercise prompt: `"...sਸੂਰਜ + ਮੁਖੀ = ___"` should read `"...ਸੂਰਜ + ਮੁਖੀ = ___"` (ਸੂਰਜ "sun" + ਮੁਖੀ "facing" → ਸੂਰਜਮੁਖੀ "sunflower", which is already the correct `correctAnswer`). Pre-existing, confirmed identical in HEAD and working tree — outside the current diff's scope, queued for a future fix pass.

**Tagalog**
- `TagalogFunctionalSkillsExerciseData.swift` comparison items — use US units (libra/onsa) and USD pricing; intentional for Filipino-American diaspora framing (matches file's existing convention) but worth confirming.
- `TagalogCognitionExerciseData.swift` analogies — a few pairings are culturally convention-dependent (e.g. "Kaarawan : Keyk :: Pasko : Regalo", "Lechon : Pista :: Pansit : Kaarawan"); defensible but should be sanity-checked.
- Loanword spellings used throughout rebuild: DYAKET, KRAYOLA, TULIPAN, AHEDRES — confirm these match the app's register elsewhere.
- Known pre-existing issue, NOT touched in this pass: ~456 empty `explanation: ""` fields across synonyms/antonyms/sentence-completion — separate follow-up.
- **DEFECT, not yet fixed:** `TagalogLanguageExerciseData.swift` `synonymsEasy` exercise, "Salita: MALAKI" item (~line 145) — `correctAnswer` is `"malaki"`, identical to the prompt word itself, rather than a real synonym, and the `explanation` is a copy-pasted antonym explanation ("Ang mga ito ay malinaw na magkasalungat..." — "these are clearly opposites...") that directly contradicts the exercise's own instructions ("Piliin ang salita na ang ibig sabihin ay PAREHONG sa ibinigay na salita" — choose the word that means the SAME). Pre-existing, confirmed identical in HEAD and working tree — outside the current diff's scope. Reference for the fix: the `antonymsEasy` exercise has a correctly-fixed sibling item with the same prompt ("Salita: MALAKI", `correctAnswer: "maliit"`, options `["malawak", "mataba", "maliit", "matangkad"]`) — the synonymsEasy item likely needs a genuine synonym for "malaki" (e.g. something like "malawak" or an intensified form) plus a matching explanation, not the antonym content.

**Punjabi**
- `PunjabiHardExercisesData.swift:234` — proverb "ਕੋਹ ਨਾ ਚੱਲੀ, ਬਾਬਾ ਤਿਹਾਈ" — only the script corruption (wrong-script letters spliced in) was fixed; the proverb's wording itself was not verified against a native source.
- FunctionalSkills comparison items — US$ per ਕਿਲੋ/ਲਿਟਰ/ਦਰਜਨ, Punjabi-American CA market framing (matches original intent); confirm phrasing "ਕਿਹੜਾ ਸੌਦਾ ਵਧੀਆ ਹੈ?" reads naturally.
- A few new analogy items (e.g. crop-season pairing "ਕਣਕ : ਹਾੜ੍ਹੀ :: ਝੋਨਾ : ਸਾਉਣੀ") may be harder than the rest of the medium-difficulty pool — level-check.

**Amharic** (full rebuild — Language/Cognition/FunctionalSkills were 100% placeholder, now 376 new items total)
- `AmharicLanguageExerciseData.swift` proverb completion set — wordings, especially «ሲሮጡ የታጠቁት ሲሮጡ ይፈታል» and «ሰው በሀገሩ ዛፍ በአጥሩ» variants, should be checked against how they're actually said.
- Same file, literary synonym pairings (ደስታ/ሐሤት, ሀዘን/ትካዜ, ክብር/ሞገስ) — more formal/literary register than the rest of the set; confirm register is appropriate for the app.
- `AmharicCognitionExerciseData.swift` cause-and-effect items — verb-form naturalness should be checked.

**English** (`EnglishNewExercisesData.swift`, Exercise 4 "Compound Words")
- **DEFECT, not yet fixed:** 6 additional items in this same exercise have the identical distractor-ambiguity problem found and fixed (2026-07-17) in FIRE/EAR/PLAY/TOOTH/FOOT/KEY/SNOW/RAIN/SUN/LIGHT, but were outside that task's explicit scope:
  - `BUTTER + ___` (Fly/Milk/Cup/Knife, correctAnswer "Fly") — Milk and Cup are also real compounds (buttermilk, buttercup).
  - `CAMP + ___` (Fire/Ground/Site/Bag, correctAnswer "Fire") — Ground and Site are also real compounds (campground, campsite).
  - `STAR + ___` (Fish/Light/Dust/Gaze, correctAnswer "Fish") — Light, Dust, and Gaze are all arguably real compounds/terms (starlight, stardust, stargaze).
  - `WATER + ___` (Melon/Fall/Color/Bottle, correctAnswer "Melon") — Fall and Color are also real compounds (waterfall, watercolor).
  - `PINE + ___` (Apple/Cone/Tree/Needle, correctAnswer "Apple") — Cone is also a real compound (pinecone).
  - `WHEEL + ___` (Chair/Barrow/Base/Alignment, correctAnswer "Chair") — Barrow and Base are also real compounds (wheelbarrow, wheelbase).
  Same fix approach recommended as the completed 10 items: redesign the 3 distractors per item to genuinely non-compounding words, verified via dictionary cross-check (catch self-introduced ambiguities like the "sunlamp" near-miss found during the first pass) before finalizing.

**Commit plan:** per-language diffs are being kept independently reviewable (French / Portuguese / Armenian / Tagalog / Punjabi / Amharic each as their own commit) rather than one combined commit — mirrors how each language's rebuild should be verifiable and revertable on its own.

## Content audit (2026-07-17): Chinese, Hindi, Gujarati, Farsi, Japanese, Korean — audit-only, NOT fixed

Status: full 30-file audit completed (5 files × 6 languages), zero files modified. Fix work deliberately deferred to a future session rather than starting in the same session as the audit. This section is the durable record of findings — see [[cognilink-exercise-rebuild]] memory for the same content plus process notes.

**Priority finding — FunctionalSkills explanation defects, confirmed in all 6 languages, two distinct sub-bugs:**
1. The templated "X is the correct answer" pattern (same bug fixed tonight in French/Armenian/Punjabi/Tagalog/English/Vietnamese): Chinese 91/274, Hindi 78/273, Gujarati 78/272, Farsi 77/273, **Japanese 192/196 (98%)**, Korean 10/149.
2. A separate, larger defect — explanation fields left entirely untranslated in English (not just templated, actually the wrong language): Chinese +116, Hindi (dozens, uncounted precisely), Gujarati +118, Farsi +159, Korean +86 (Korean's variant is terse mislabeled English category tags like "Fall safety first aid." rather than full sentences — isolated to the explanation field only, prompts/options/correctAnswer confirmed still proper Korean). Japanese is the exception — its explanations are templated but still in Japanese, no untranslated-English defect.

Combined defective-item rate: Chinese ~75%, Gujarati ~72%, Farsi ~86%, Korean ~64%, Japanese ~98% (rate only, content quality is good — see below), Hindi high but uncounted precisely.

**Severity ranking (worst to best), with top findings per language:**

**Gujarati — SEVERE, worst of all 6, and of every language audited this session. Both structural bugs and the content-quality remainder are now FIXED (2026-07-17), see below.**
- **~40 items were genuinely unanswerable** (closer to broken feature than content-quality issue): entire "Reading Menus" (17 items), household-bill (4 exercises), and medication-label (18 items) exercises in `GujaratiFunctionalSkillsExerciseData.swift` referenced a document the user was told to read, but the document content was never populated in the data. **FIXED and committed as `e0734b0`** — 38 passages written (matches the ~40 estimate), 22 also got an appended implied question; see [[cognilink-exercise-rebuild]] for full verification detail.
- Widest script contamination found all session: `GujaratiHardExercisesData.swift` had Devanagari, Gurmukhi, Bengali, Armenian, **and Sinhala** (a 5th script the original structural scan missed) spliced into single words, worst in a "હંસ/હસ" swan/laugh homophone item with 3+ foreign scripts in one string. Plus 4 Latin-letter injections (e.g. "મીણbatti" = candle) and a corrupted instruction phrase "દિેલ" (should read "આપેલ"/given) in 3 items of `GujaratiLanguageExerciseData.swift` (a 3rd file, outside the originally-named FunctionalSkills/Hard scope — audit's file-scope estimate was incomplete). **FIXED, staged for commit pending review 2026-07-17**: all foreign-script characters removed (re-scan confirmed zero remaining across all non-Gujarati-non-Latin script ranges), all Latin splices and the "દિેલ" phrase fixed.
- 78 templated + **171** English-only explanations (audit's "118" estimate for English-only was undercounted by direct re-scan — 171 is the verified figure), both in `GujaratiFunctionalSkillsExerciseData.swift`. **FIXED, staged for commit pending review 2026-07-17**: all 249 regenerated with genuine Gujarati reasoning (causal/mechanistic for safety items, sequencing-logic for cooking-step items, worked arithmetic for time/math items, passage-citing for menu/prescription items). Zero templated/English/empty explanations remain; item count unchanged (272); swiftc clean.
- **New defect found during the explanation-regeneration pass, NOT fixed (out of that task's scope):** `GujaratiFunctionalSkillsExerciseData.swift`, "સમય અને ગણિત" section, idx ~98565 — a store-closing-time item ("દુકાન રાત્રે 9 વાગ્યે બંધ થાય. ગાડીથી 25 મિનિટ અને ખરીદીમાં 30 મિનિટ. અત્યારે 8 વાગ્યા છે.") grades "ના પૂરતો સમય નથી" (no, not enough time) as correct, but 8:00pm + 25min + 30min = 8:55pm, which is *before* the 9:00pm close — same bug class as the English `FunctionalSkillsExerciseData.swift` store-closing item already fixed in `171c5d2` ("No" → "Yes but you need to hurry"). Recommended fix: change `correctAnswer` to "હા પણ ઉતાવળ કરવી પડશે" (yes, but need to hurry) and update the explanation to match.

**Farsi — content-quality findings from the 6-language audit are now FIXED (2026-07-17), see below. One new structural bug found during the fix pass remains open.**
- All 15 `FarsiCognitionExerciseData.swift` duplicate-prompt pairs (30 items: 6 Locations, 6 History, 3 Estimation, copy-pasted from 3 earlier WH-question batches) — **FIXED**, staged pending review: replaced the copy-pasted half of each pair with genuinely new, non-colliding content (verified against every other prompt in the same 7 affected sections to avoid introducing fresh collisions). Zero duplicate prompts remain; item count unchanged (256).
- CJK contamination — audit named 1 location, direct full-field scan (prompt/options/correctAnswer/explanation, not just explanations) found **4**: `FarsiHardExercisesData.swift:179` (named item, "环保"→"قابل استفاده مجدد" in both options and correctAnswer), `FarsiHardExercisesData.swift:201` ("扎根" in an explanation, not previously flagged), `FarsiFunctionalSkillsExerciseData.swift:670` ("在" in a correctAnswer, not previously flagged). **FIXED**, zero CJK remains anywhere in any of the 5 Farsi files (re-scanned CJK/Hiragana/Katakana/Hangul ranges).
- Arabic-vs-Persian letter-form mixing — confirmed via codepoint-level scan, all 5 characters (3× ي, 2× ك) confined to `FarsiHardExercisesData.swift`: the section title (×2 occurrences) plus 2 proverb items. **FIXED**, zero Arabic-form ي/ك remain in any file (verified codepoint scan, all other 4 files were already clean).
- FunctionalSkills explanation defects — audit said 159 English-only; direct scan found **248** (76 templated-echo + 172 English-only, verified count). Additionally, **130 more English-only explanations found in `FarsiLanguageExerciseData.swift`**, a file not named in the original audit's finding at all (Category Cross-Out ×2, Sentence Completion, Analogies, Fact-or-Opinion sections). **FIXED**, all 378 regenerated with genuine Farsi reasoning (causal/mechanistic for safety scenarios, worked arithmetic for time/math, category-rule statements for cross-out items, verifiability reasoning for Fact/Opinion items). Zero templated/English/empty explanations remain in either file; item counts unchanged (273/192); swiftc clean.
- Factual/classification error — `FarsiLanguageExerciseData.swift:318` (audit cited line 311, actual line was 318), "تخت‌جمشید توسط کوروش بزرگ ساخته شد" (Persepolis built by Cyrus the Great — false, it was Darius I) graded "Opinion" instead of recognized as a false-but-verifiable historical claim. **FIXED, both dimensions**: corrected the claim to the true fact (Darius I) and kept `correctAnswer: "Fact"`, consistent with the rest of the exercise's verifiability-based pattern.

**Structural bug (missing passages) — FIXED and committed 2026-07-17 as `ceaa944`**, same class as Gujarati's `e0734b0`: `FarsiFunctionalSkillsExerciseData.swift` had 31 items (not the originally-logged 29 — direct re-scan found 2 more Reading Prescriptions items the first pass missed: a grapefruit-juice drug-interaction warning and an allergy-medication timing item) across 3 exercise types whose prompts referenced a document to read but whose `passage` field was null, making them genuinely unanswerable. Breakdown: 17 Reading Menus, 10 Reading Prescriptions, 4 utility-bill math items. Fixed by writing 31 new Farsi-script passages (restaurant/cafe menus, medication labels from a named pharmacy, utility bills from named California-style providers), grounded in the established Iranian-American California community context. Also fixed a related defect found during scoping: 21 of the 31 items had no actual question in the prompt at all (just "read the following document"), same pattern as Gujarati's 22-of-38 — appended the implied question to each. Verification: item count unchanged (273); diff isolated to exactly `prompt` (21 items) + new `passage` field (all 31), zero other field changes; all 15 math/comparison-based items' logic independently recomputed and confirmed against their graded `correctAnswer`; swiftc clean. One self-caught bug during the fix: an initial pass used raw Python newlines inside passage strings, breaking Swift string literals — caught immediately by the typecheck, reverted, and redone with properly escaped `\n` sequences.

**Chinese — needs real fixes.**
- **Content bleed + structural bug**: `ChineseFunctionalSkillsExerciseData.swift:654-735`, an 11-item "cooking steps" exercise is copy-pasted from a Hindi/Punjabi version of the app — Indian dishes (Chai, Dal Tadka, Roti, Kheer, etc.) with Chinese immigrant character names slapped on, culturally irrelevant for the stated audience. These same 11 items also store `options` as a single pipe-delimited string instead of a proper array (e.g. line 655), unlike every other sequencing item in the file — **this will break the sequencing UI**, making it closer to a functional bug than a content-quality one, same category as Gujarati's missing-passage bug.
- Factual error: `ChineseCognitionExerciseData.swift:200` — China's actual 2008 Beijing Olympics gold-medal count (48) sits as a wrong-answer distractor; the graded correct answer (51) is factually wrong.
- 116 English-only explanations beyond the 91 templated ones; a Hangul-particle contamination at `ChineseHardExercisesData.swift:460-461` ("의" used instead of Chinese "的").

**Hindi — needs real fixes.**
- `HindiNewExercisesData.swift`, compound-word exercise, "सूर्य + ___" item: the graded correct answer is rendered as invalid Devanagari — "ोदय" (a vowel sign glued to a consonant with no base, not a valid word) — instead of "उदय." **No listed option actually matches the item's own explanation, making the item unanswerable as written.**
- `HindiHardExercisesData.swift`, "प्रसिद्ध हिंदी कहावतें" (famous Hindi sayings) exercise: a fill-in-the-blank item is self-contradictory — the graded answer word already appears in the prompt before the blank, so filling it in produces a duplicated word ("दूर के ढोल सुहावने सुहावने लगते हैं").
- Widespread English-only explanations across most FunctionalSkills sub-exercises (safety scenarios, TV schedules, calendar math, cooking steps, money math). Script-purity scan came back completely clean (zero homoglyph contamination found anywhere in Hindi's 5 files) — the one bright spot among the 6.

**Korean — needs real fixes.**
- The English-only-explanation defect (86 of 149 `KoreanFunctionalSkillsExerciseData.swift` items) is isolated to the `explanation` field only — prompts/options/correctAnswer confirmed still proper Korean throughout, somewhat limiting blast radius versus Gujarati/Farsi/Chinese.
- Real script contamination precisely located at 3 specific lines in `KoreanHardExercisesData.swift` (67, 103, 172 — Devanagari, then Chinese twice), carefully distinguished from the large amount of *legitimate* Hanja etymology-glossing elsewhere in the same file, which is standard Korean writing convention and not a defect.
- Korean's own version of the English-source synonym/antonym copy-paste bug: `KoreanLanguageExerciseData.swift`, "단어: 빅" (Word: BIG) item explanation describes an antonym relationship ("opposite") for a synonym-graded answer ("큰"). Plus 2 new duplicate-option defects (all 4 options identical text in a homonym exercise; a duplicated option within a single item) and one real Korean grammar error ("굽니다"/bake used where "갑니다"/till-a-field was meant).

**Japanese — needs real fixes, but the narrowest, most mechanical fix of the 6.**
- The 98% template rate (192/196) is the highest severity *by rate* found this session, but critically the underlying `correctAnswer` content itself is good — real, substantive safety procedures and correctly-verified math/date arithmetic throughout (independently re-verified by the audit agent, e.g. ¥6,000/200kWh=¥30/kWh, ¥2,000×1.25=¥2,500). **This means the fix is a targeted explanation-regeneration pass, not a content rewrite** — best-scoped fix of the 6, structurally identical to English's already-completed `171c5d2` fix.
- One genuine wrong graded answer: `JapaneseFunctionalSkillsExerciseData.swift:359`, a calendar-math item (2nd Saturday of a month starting on Monday) is off by one day — marks the 14th correct when the 13th is right per the item's own stated logic, with the actually-correct answer sitting as an unused distractor.
- One factual/logic contradiction: `JapaneseCognitionExerciseData.swift:411`, a history item's graded answer (1945) contradicts its own explanation's stated dates (1946/1947), and neither cited year is even offered as an option.
- One copy-pasted antonym-into-synonym explanation (`JapaneseLanguageExerciseData.swift:151`, same bug class as English/Korean/Hindi/Gujarati's BIG/FAST items).
- No script contamination, no cross-language bleed, no untranslated leftovers found anywhere in any of the 5 Japanese files — cleanest of the 6 on every dimension except the template rate.

**`trackedType` classification check:** confirmed clean across all 6 languages — all 30 files were within `44e1ec6`'s stated scope, verified zero missing/nil-when-shouldn't-be trackedType fields, and spot-checked actual enum values used (Chinese/Korean Hard files correctly use all 8 valid `TrackedExerciseType` cases) against the English/French known-good baseline pattern. No action needed here.

**Queued fix plan, in order (per explicit 2026-07-17 decision to defer all fixing to a future session):**
1. **The 2 structural bugs first, in isolation, before any broader content pass** — these are closer to "broken feature" than "content quality": Gujarati's missing `passage` data (~40 unanswerable items across menus/bills/medication-labels) and Chinese's options-array-as-single-pipe-string format bug (11 items, will break the sequencing UI).
2. Then work through the 6 languages one at a time in severity order — Gujarati, Farsi, Chinese, Hindi/Korean, Japanese last — same review→verify→commit discipline as the rest of this session (verify current state directly, don't batch-assume, field-level diff isolation, swiftc typecheck, before/after samples, explicit go-ahead before each commit).
