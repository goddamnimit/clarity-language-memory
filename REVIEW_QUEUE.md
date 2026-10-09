# REVIEW_QUEUE

Items needing human / native-speaker judgement. Each entry: file, location, current text, proposed fix, reason.
Locations are (file, exercise title, item index starting at 0). Line numbers shift as files are edited, so search by prompt text.

## A. Structural changes I made that need a native-speaker glance

### A1. Amharic: new exercise titles and instructions (commit 5c46b9a)
The three legacy Amharic files had a single exercise each titled with the *file name*. I split them by item shape and wrote short Amharic titles/instructions. All need native review:
- `የማይመጥነውን ቃል ያግኙ` / `ከሌሎቹ የተለየውን ቃል ይምረጡ።` (odd-one-out)
- `አዎ ወይስ አይደለም` / `አዎ ወይም አይደለም ብለው ይመልሱ።` (yes/no)
- `እውነታ ወይስ አስተያየት` / `እውነታ ወይም አስተያየት መሆኑን ይምረጡ።` (fact/opinion)
- `የዋጋ ንጽጽር` / `የተሻለውን ዋጋ ይምረጡ።` (price comparison)
- `ቅደም ተከተል` / `ደረጃዎቹን በትክክለኛ ቅደም ተከተል ያስቀምጡ።` (sequencing)
- `ክፍት ጥያቄዎች` / `ጥያቄውን በራስዎ ቃል ይመልሱ።` (open ended)
- `ዓረፍተ ነገር ማጠናቀቅ` / `ክፍት ቦታውን የሚሞላውን ቃል ይምረጡ።` (fill the blank)
- `የቋንቋ ጥያቄዎች`, `የማሰብ ችሎታ ጥያቄዎች`, `የዕለት ተዕለት ክህሎት ጥያቄዎች` (general MC per section) / `ትክክለኛውን መልስ ይምረጡ።`
Also: `trackedType` is `nil` on all of them. Decide whether the blank-fill group should be `.sentenceCompletion` (adaptive tracking) for Amharic. Progress history keyed by the old file-name titles is orphaned for Amharic users (no export impact).
Also: `AmharicNewExercisesData` / `AmharicHardExercisesData` still carry the *English* instruction string "Choose the correct answer." on every exercise (untranslated in an Amharic UI).

### A2. Korean idioms split (commit 49f45a0)
`KoreanCognitionExerciseData` "관용구와 비유적 표현": 32 items were multiple-choice shaped, 3 were open-ended shaped, all inside one `.openEnded` exercise. Split into MC (32) + new open-ended exercise `관용구 직접 설명하기` / `관용구의 뜻을 직접 말하거나 써 보세요.` (3 items). Please check the new Korean title/instruction. Alternative: write 3 distractors each for the open-ended items and merge.

### A3. Sequencing correct order rebuilt from the English step order
- Arabic `خطوات التسلسل` (8 items) and Vietnamese `Trình tự các bước` (8 items): the translated options are in the same order as the English source, so correctAnswer was rebuilt via the English permutation. The explanations were answer-echoes ("X là câu trả lời đúng") and were replaced with "الترتيب الصحيح: a → b → c." / "Thứ tự đúng: a → b → c." Native check please, and the underlying translations are poor in places (Arabic: `شنق` for "hang up", `كنس الكلمة` for "Sweeping the Floor", `ملفات تعريف الارتباط` for "cookies" = browser cookies!). These 8 items need re-translation.
- Arabic `خطوات الطبخ` (2 items left) and Vietnamese `Các bước nấu ăn` (1 item left): options were already in logical order, correctAnswer is now the options joined by " | ". Assumption: option order = correct order. Verify.

### A4. Padding duplicates collapsed (commit 49f45a0)
These exercises were padded to a target count with the same item repeated with "(Bước 12)" / "(خيار 54)" style numbering. I collapsed exact duplicates, leaving very small exercises that now need real content:
- Vietnamese Functional: `Các bước nấu ăn` 61→1, `Tình huống an toàn` 50→1, `Mua sắm nhu yếu phẩm` 60→1
- Arabic Functional: `خطوات الطبخ` 66→2, `خرید البقالة — أفضل قيمة` 55→2 (note Persian `خرید` in an Arabic title)
- Arabic Cognition `القياس المنطقي` 70→11
- Armenian Functional: `Պատրաստման Քայլեր` 70→20, `Գնումներ կատարելը` 75→3
Any "item count parity" claim for these languages is false: the old counts were padding. A translation pass should regenerate them.

### A5. Exercise types changed to match item shape
Arabic idioms openEnded→multipleChoice; Arabic grocery comparison→multipleChoice (4 options incl. "equal"/"unknown"); Vietnamese "Sự thật hoặc ý kiến" multipleChoice→factOrOpinion; Vietnamese safety openEnded→multipleChoice; Vietnamese shopping comparison→multipleChoice; Vietnamese `Trình tự các bước` multipleChoice→sequencing with `trackedType: .sequencing` (matches the English source exercise).

### A6. Analogy items leaked their answer (commit 49f45a0)
Armenian Cognition `Համանմանություններ` (80 items) and Portuguese Cognition analogies (60 items) printed the full analogy including the answer in the prompt ("A : B :: C : D" with D the correct answer). The final term was replaced with `___`. Check the Armenian/Portuguese options still read as natural completions.

## B. Self-referential synonym items (correctAnswer == the prompt word)
These "synonym" items offer antonyms/unrelated words as options, with explanations copied from the antonym exercise. No valid synonym is among the options, so they are not mechanically fixable. Proposed fix: replace with a real synonym + new distractors, or delete the item.
- `ArabicLanguageExerciseData` / مرادفات (سهل) / item 0: prompt `الكلمة: غاضب` answer `غاضب` options ['سعيد', 'غاضب', 'الهدوء', 'حزين']
- `ArabicLanguageExerciseData` / مرادفات (سهل) / item 2: prompt `الكلمة: كبير` answer `كبير` options ['صغير', 'كبير', 'قصيرة', 'رقيقة']
- `ArabicLanguageExerciseData` / مرادفات (سهل) / item 6: prompt `الكلمة: سريع` answer `سريع` options ['بطيء', 'سريع', 'كسول', 'مملة']
- `ArabicLanguageExerciseData` / مرادفات (صعب) / item 2: prompt `الكلمة: شجاع` answer `شجاع` options ['خجول', 'مخيف', 'شجاع', 'جبان']
- `ArabicLanguageExerciseData` / مرادفات (صعب) / item 3: prompt `الكلمة: غريب` answer `غريب` options ['عادي', 'غريب', 'عادي', 'نموذجي']
- `ArabicLanguageExerciseData` / مرادفات (صعب) / item 5: prompt `الكلمة: ضعيف` answer `ضعيف` options ['قوي', 'عظيم', 'ضعيف', 'قوية']
- `ArabicLanguageExerciseData` / مرادفات (صعب) / item 7: prompt `الكلمة: مقتصد` answer `مقتصد` options ['مسرف', 'مقتصد', 'فخم', 'سخية']
- `ArmenianLanguageExerciseData` / Հոմանիշներ (Հեշտ) / item 2: prompt `Բառ: ՄԵԾ` answer `մեծ` options ['փոքրիկ', 'մեծ', 'կարճ', 'բարակ']
- `FrenchLanguageExerciseData` / Préfixes et suffixes / item 3: prompt `_tion (action de): information` answer `Information` options ['Information', 'Informatise', 'Informatique']
- `FrenchLanguageExerciseData` / Préfixes et suffixes / item 5: prompt `_ment (manière de): lentement` answer `Lentement` options ['Lentement', 'Lenteur', 'Lentise']
- `FrenchLanguageExerciseData` / Préfixes et suffixes / item 8: prompt `_able (qui peut être): portable` answer `Portable` options ['Portable', 'Porteur', 'Portant']
- `FrenchLanguageExerciseData` / Préfixes et suffixes / item 10: prompt `_isme (doctrine): réalisme` answer `Réalisme` options ['Réalisme', 'Réaliste', 'Réalité']
- `FrenchLanguageExerciseData` / Préfixes et suffixes / item 13: prompt `_age (action): voyage` answer `Voyage` options ['Voyage', 'Voyageur', 'Voyagisme']
- `FrenchLanguageExerciseData` / Préfixes et suffixes / item 15: prompt `_eur (comparatif): meilleur` answer `Meilleur` options ['Meilleur', 'Bien', 'Bonsoir']
- `PunjabiLanguageExerciseData` / ਸਮਾਨਾਰਥੀ (ਆਸਾਨ) / item 2: prompt `ਸ਼ਬਦ: ਵੱਡਾ` answer `ਵੱਡਾ` options ['ਛੋਟਾ', 'ਵੱਡਾ', 'ਛੋਟਾ', 'ਪਤਲਾ']
- `PunjabiLanguageExerciseData` / ਸਮਾਨਾਰਥੀ (ਆਸਾਨ) / item 6: prompt `ਸ਼ਬਦ: ਤੇਜ਼` answer `ਤੇਜ਼` options ['ਹੌਲੀ', 'ਤੇਜ਼', 'ਆਲਸੀ', 'ਸੰਜੀਵ']
- `PunjabiLanguageExerciseData` / ਸਮਾਨਾਰਥੀ (ਆਸਾਨ) / item 8: prompt `ਸ਼ਬਦ: ਗੰਦਾ` answer `ਗੰਦਾ` options ['ਸਾਫ਼', 'ਗੰਦਾ', 'ਸਾਫ਼-ਸੁਥਰਾ', 'ਸੁਥਰਾ']
- `PunjabiLanguageExerciseData` / ਸਮਾਨਾਰਥੀ (ਸਖਤ) / item 4: prompt `ਸ਼ਬਦ: ਭਰਪੂਰ` answer `ਭਰਪੂਰ` options ['ਦੁਰਲੱਭ', 'ਭਰਪੂਰ', 'ਦੁਰਲੱਭ', 'ਸੀਮਿਤ']
- `PunjabiLanguageExerciseData` / ਸਮਾਨਾਰਥੀ (ਸਖਤ) / item 5: prompt `ਸ਼ਬਦ: ਕਮਜ਼ੋਰ` answer `ਕਮਜ਼ੋਰ` options ['ਮਜ਼ਬੂਤ', 'ਸ਼ਕਤੀਸ਼ਾਲੀ', 'ਕਮਜ਼ੋਰ', 'ਮਜ਼ਬੂਤ']
- `TagalogLanguageExerciseData` / Mga kasingkahulugan (Madali) / item 2: prompt `Salita: MALAKI` answer `malaki` options ['maliit', 'malaki', 'maikli', 'manipis']
- `TagalogLanguageExerciseData` / Mga kasingkahulugan (Madali) / item 6: prompt `Word: MABILIS` answer `mabilis` options ['mabagal', 'mabilis', 'tamad', 'mapurol']
- `TagalogLanguageExerciseData` / Mga kasingkahulugan (Mahirap) / item 2: prompt `Word: MATAPANG` answer `matapang` options ['mahiyain', 'nakakatakot', 'matapang', 'duwag']
- `TagalogLanguageExerciseData` / Mga kasingkahulugan (Mahirap) / item 4: prompt `Word: SAGANA` answer `sagana` options ['kakaunti', 'sagana', 'bihira', 'limitado']
- `TagalogLanguageExerciseData` / Mga kasingkahulugan (Mahirap) / item 5: prompt `Word: MAHINA` answer `mahina` options ['malakas', 'makapangyarihan', 'mahina', 'matatag']
- `VietnameseLanguageExerciseData` / Từ đồng nghĩa (Dễ dàng) / item 6: prompt `Từ: NHANH CHÓNG` answer `nhanh chóng` options ['chậm', 'nhanh chóng', 'lười biếng', 'đần độn']
- `VietnameseLanguageExerciseData` / Từ đồng nghĩa (Cứng) / item 4: prompt `Từ: Dồi dào` answer `dồi dào` options ['khan hiếm', 'dồi dào', 'hiếm', 'hạn chế']
- `VietnameseLanguageExerciseData` / Từ đồng nghĩa (Cứng) / item 7: prompt `Lời: TIẾT KIỆM` answer `tiết kiệm` options ['lãng phí', 'tiết kiệm', 'xa hoa', 'hào phóng']

(French note: the `_tion (action de): information`-style suffix items in `FrenchLanguageExerciseData` "Suffixes" are listed above only because the answer repeats a word from the prompt; they are a different item format and are probably fine, but the format is confusing.)

## C. Other items
- `ArabicFunctionalSkillsExerciseData` / قراءة القائمة item 6 and فهم الفواتير item 9: explanation is only `"$6.50" هي الإجابة الصحيحة.` / `"$120.00" ...` (pure answer echo). Needs a real explanation.
- `KoreanFunctionalSkillsExerciseData` / TV 편성표 item 0: explanation ends with "정답은 오후 7:00입니다" (partial echo, acceptable but could be tightened).
- `PunjabiLanguageExerciseData` sentence completion items 4, 9, 17 and `AmharicLanguageExerciseData` blank/MC items: explanation opens with "this is the correct answer because ..." phrasing. They contain reasoning, so left alone.
- English `LanguageExerciseData` cross-out `JURY / JUDGE / BAILIFF / PLAINTIFF => PLAINTIFF`: all four are courtroom roles, so the odd one out is ambiguous. Proposed: replace PLAINTIFF with a non-court word, or change the category to "court staff".
- English `BASEBALL / TENNIS / CHESS / SOCCER => CHESS`: acceptable ("not a ball sport") but chess is arguably a sport. Optional rewording.
- Time-stable review: the only date-sensitive English item I found was the population question (now "As of 2025 ..."). The source-workbook errors you listed (Joan of Arc 1421, Catcher in the Rye 1961, Magellan 1522, St. Petersburg/Kiev, Nixon as President, Pluto, Everest/Nepal) do **not** appear in any language file (grepped English plus script-aware searches of all 16 languages by name). Remaining present-tense facts that could age: "How many states are in the United States? 50", "Which US state is the largest by land area? Alaska", "smallest country in the world by area? Vatican City", "capital of the United States". All stable, but flagged.
- Documented in KNOWN_ISSUES.md earlier and still open: Portuguese "Passos de Culinária" title/content mismatch, Tagalog `synonymsEasy` MALAKI (listed in B), Punjabi/Armenian native-review items.
- Empty explanations (validator *warnings*, not errors): see OVERNIGHT_REPORT.md for the per-language counts; backfilling needs per-language translation work.
- Repo hygiene (not touched): `ArtworkSource/` is 264 MB of tracked source JPGs; `CogniLink.xcodeproj/xcuserdata/.../xcschememanagement.plist` is tracked even though `xcuserdata/` is gitignored (untrack with `git rm --cached`).
