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

**Punjabi**
- `PunjabiHardExercisesData.swift:234` — proverb "ਕੋਹ ਨਾ ਚੱਲੀ, ਬਾਬਾ ਤਿਹਾਈ" — only the script corruption (wrong-script letters spliced in) was fixed; the proverb's wording itself was not verified against a native source.
- FunctionalSkills comparison items — US$ per ਕਿਲੋ/ਲਿਟਰ/ਦਰਜਨ, Punjabi-American CA market framing (matches original intent); confirm phrasing "ਕਿਹੜਾ ਸੌਦਾ ਵਧੀਆ ਹੈ?" reads naturally.
- A few new analogy items (e.g. crop-season pairing "ਕਣਕ : ਹਾੜ੍ਹੀ :: ਝੋਨਾ : ਸਾਉਣੀ") may be harder than the rest of the medium-difficulty pool — level-check.

**Amharic** (full rebuild — Language/Cognition/FunctionalSkills were 100% placeholder, now 376 new items total)
- `AmharicLanguageExerciseData.swift` proverb completion set — wordings, especially «ሲሮጡ የታጠቁት ሲሮጡ ይፈታል» and «ሰው በሀገሩ ዛፍ በአጥሩ» variants, should be checked against how they're actually said.
- Same file, literary synonym pairings (ደስታ/ሐሤት, ሀዘን/ትካዜ, ክብር/ሞገስ) — more formal/literary register than the rest of the set; confirm register is appropriate for the app.
- `AmharicCognitionExerciseData.swift` cause-and-effect items — verb-form naturalness should be checked.

**Commit plan:** per-language diffs are being kept independently reviewable (French / Portuguese / Armenian / Tagalog / Punjabi / Amharic each as their own commit) rather than one combined commit — mirrors how each language's rebuild should be verifiable and revertable on its own.
