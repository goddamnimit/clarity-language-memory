# PROJECT_INSTRUCTIONS_UPDATE — paste-ready replacement sections

## Platform facts (correction)
- The iOS app's deployment target is **iOS 17.6** (the old "iOS 16+" line is stale); tvOS 17.6+; widget iOS 17.6. Xcode 26.x.
- **Current App Store version: 4.3. Next release: 4.4.** (Per the owner. Git does not record it: no commit on any branch sets `MARKETING_VERSION = 4.3`, main's last committed values are iOS/widget 4.1 and tvOS 4.0, and there are no tags. The uncommitted Xcode working tree has 4.4.) Do not bump versions in feature commits.

## Git (correction)
- `main` was fast-forwarded to `add-english-new-exercises` (f0b67f8) and is the working branch. The exact fast-forward date cannot be recovered: `main`'s reflog is empty. f0b67f8 is dated 2026-07-17, and later commits on `main` run through 2026-07-24 (fbd39b2). Local `main` equals `origin/main` (fbd39b2) as of 2026-10-08.
- The overnight work lives on `overnight/2026-10-08` (unpushed, ~22 commits). Merge after review.

## Live features (corrections to "Open Items")
- **Caregiver Insight Dashboard: LIVE** (`InsightEngine.swift` + `CaregiverInsightsView.swift`), shipped before Cross-Referenced Adaptive Difficulty. Remove from Open Items.
- **Trajectory-Aware Insights: SHIPPED** — da960a1 (settings/storage), 9caed1a (InsightEngine framing), dba299d (disclaimer consolidation), 1cc4232 (settings-UI localization). Appendix A clinical decline/stability copy remains **English-only pending licensed-SLP review**.
- **DiagnosisType:** committed ac34596 (9 cases + `customDiagnosisText`); translated labels are gated on SLP review.
- **Accessibility batch** (voice input iOS, Dynamic Type, VoiceOver): 9109692, 7d9e15c, fbd39b2 (and earlier a3ebf99, c88ef96). No tags/build-number evidence of an App Store release — confirm in App Store Connect before saying it shipped.
- **Cross-reference feature** 0ad5e9f; **widget** e80e223 / 2ce109c (App Group `group.com.nimitdesai.clarity.shared`, same in code and both entitlements; real-device check still pending).

## Content (correction)
Remove any claim of "961+ items in every language". Real counts range from about 1,019 (Arabic) to 1,239 (Punjabi); Japanese 1,054, Vietnamese 1,024, Arabic 1,019 are the smallest (table in OVERNIGHT_REPORT.md). Exercise groups with fewer than 5 items are hidden from users by one central rule.

## Research export
`firstTryCorrect` keeps its original meaning (first attempt correct). New additive fields for cue-eligible exercises: `firstTryCorrectNoCue`, `cuedItems`, `cueLevelCounts`.

## New backlog item
- **Caregiver email signup** (purpose TBD). Needs a backend and a privacy-policy / App Store privacy-label change; out of scope until decided.
- Other proposals only: iCloud sync, progress-sharing link, multi-profile, clinician mode, AAC board, custom photos for naming (needs image-support decision), dysphagia/apraxia video, tvOS versions of the new features.

## Overnight 2026-10-08 (all on `overnight/2026-10-08`)
- Baseline repair: main's validator was red (591 items / 11 catalogs). 5c46b9a (Amharic restructure), 49f45a0 (type/sequence/duplicate/homoglyph fixes), 4c1a6d1 (English content).
- a12a9ad `DayActivity` extracted (AppProgressView kept); 6d687aa pbxproj orphan refs; af9850a tvOS prompt clipping fixed.
- Features: 5ffba3c F1 Today card · debe9f5 F2 answer-choice count · 9bc5369 F3 cue ladder · 0659bcf F9 second reminder · 86b5b55 F4 Number Skills · 7d5ef9f F5 Remember It · 784f408 F6 Visual Scanning · b41e90b F8 Reading Passages (English) · cc02e6a F7 Conversation Starters (English).
- Preview languages (hidden via `AppLanguage.isPreview`): Russian 9cd8c61/5f3318b, Ukrainian a7b6365/c72bbc1. Not for release until native review.
- Docs: d542dc1 REVIEW_QUEUE.md; 10fac46 FEATURE_PLAN.md + OVERNIGHT_REPORT.md; CLAUDE.md added to the repo.

## Working rules to add
- Always run tests by simulator UDID; the Keychain tests are serialized.
- Wiring a new language: add the `AppLanguage` case, mark `isPreview`, add `case` to every UI string switch (the compiler lists them), add the 5 data files to `allExercises`, `exercisesForSection` and `ExerciseDataValidator.catalogs`, use `visibleCases` in every picker, and never add system-language auto-detection for a preview language.
- Research export stays anonymous; personal data in the Keychain only.
