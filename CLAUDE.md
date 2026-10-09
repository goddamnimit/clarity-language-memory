# CLAUDE.md — Clarity (CogniLink)

SwiftUI, no third-party libraries, no network, no accounts. Targets: `CogniLink` (iOS, universal, min iOS 17.6), `ClarityTV` (tvOS 17.6+, compiles the `CogniLink/` folder too), `ClarityWidget`. Xcode 26.x. Folders are file-system-synchronized: new Swift files are picked up automatically (no pbxproj edit), except the widget which lists `AppTheme.swift` and `WidgetSnapshot.swift` explicitly.

## Versions
Last shipped to the App Store: **4.3.x** (owner recalls 4.3.2); the version in this tree is **4.4** (build 100, iOS app and widget extension together). Do not bump `MARKETING_VERSION`/`CURRENT_PROJECT_VERSION` in a feature commit. History before 4.4 has no commit that sets 4.3 and there are no tags until the checklist below is followed.

## Rules that must not be broken
- **Adaptive difficulty:** never change `AdaptiveDifficultyStore` thresholds/windows/cross-reference logic. Features may feed it inputs (cued answers are reported as not-correct).
- **Insight copy:** do not edit InsightEngine's clinical decline/stability wording (English-only pending licensed-SLP review). Do not ship translated `DiagnosisType` labels.
- **Research export is anonymous.** Personal data (names, notes, phone number, memory targets) lives in the Keychain (`KeychainHelper`) and must never appear in `ResearchExportManager`. Unit tests assert this for the phone number and Remember It targets.
- **`firstTryCorrect` in the session log means "the first attempt at the item was correct" and must not change.** Cue-aware numbers go in additive fields (`firstTryCorrectNoCue`, `cuedItems`, `cueLevelCounts`), documented in `ResearchExportManager`.
- **Never loosen `ExerciseDataValidator` or a test to pass.** Fix the data.

## Exercise data file rules
`static let`; `UUID()` ids; `correctAnswer` exactly equals one option (except `.openEnded`, `.sequencing`); `.yesNo` options exactly `["Yes","No"]`, `.factOrOpinion` exactly `["Fact","Opinion"]` (never translated); `.sequencing` correctAnswer joins steps with `" | "` and each step is an option; every exercise sets `trackedType:` explicitly (nil unless it is one of the 8 tracked types); full-width quotes in Farsi/Arabic/Chinese/Japanese/Amharic; script purity per language. Use a string-aware parser for any scan/rewrite (never count parentheses by line).

## Content counts
Item counts differ by language (about 1,019–1,239 items; see OVERNIGHT_REPORT.md for the table). Do not claim parity. Groups with fewer than 5 items are hidden centrally (`Exercise.minimumVisibleItems`, applied in `LanguageManager.allExercises` / `exercisesForSection`); the validator still checks them.

## Where things are
- Languages: `AppLanguage.swift` (enum, `isPreview`, `visibleCases`, `allExercises`, `exercisesForSection`) + a `case` in each UI string switch (ContentView, CaregiverModeView, TV*, …). Pickers must use `AppLanguage.visibleCases`. Preview languages (Russian, Ukrainian) are not offered in the picker or by system-language detection.
- New UI strings for the Practice Supports features: `FeatureStrings.swift` (`FS`, one labelled parameter per language, so a missing language is a compile error).
- Practice Supports settings: `PracticeSupportSettings` (+ `PracticeSupportsCard`, `MemoryTargetsCard` in Therapy Settings).
- Features (iOS only): `OrientationCardView`, `ChoiceCountFilter`, `CueLadder`, `NumberSkillsView`/`NumberDrillGenerator`, `SpacedRetrievalView`/`SpacedRetrieval`, `VisualScanningView`/`ScanGrid`, `ReadingSupportView`/`ReadingPassageData`, `ConversationStartersView`/`ConversationTopicData`. English-only features are gated with `isAvailable(for:)`.
- iOS text-to-speech: `SpeechOutput` (check `voiceAvailable(for:)`; Gujarati, Farsi, Punjabi, Armenian, Amharic, Tagalog have no system voice).

## Testing
```
xcodebuild test -scheme CogniLink -destination 'platform=iOS Simulator,id=<UDID>' -only-testing:CogniLinkTests
```
Use the simulator UDID (names resolve against the newest OS). Tests that touch the Keychain are in a `.serialized` suite. After a test run the simulator is shut down; boot it again before `simctl`.
tvOS: `xcodebuild -scheme ClarityTV -destination 'generic/platform=tvOS Simulator' build`.

## tvOS layout
`TVOptionGridView` must keep guaranteed space above Replay/Skip (App Review Guideline 4). Prompts scale to the 35 % band (`minimumScaleFactor`), they do not scroll.

## Submission checklist
1. All tests green (`CogniLinkTests`, including the validator over every catalog) and all three schemes (CogniLink, ClarityTV, ClarityWidget) build.
2. Bump `MARKETING_VERSION` and `CURRENT_PROJECT_VERSION` in their own commit ("Bump to X.Y (build N)"); the build number must be higher than the last upload, and the widget extension must carry the same values as the iOS app.
3. Archive **from that commit** (clean working tree, nothing uncommitted).
4. After the upload succeeds, tag that commit `vX.Y` (e.g. `v4.4`).
5. Do not unhide preview languages (`AppLanguage.isPreview`) or publish website pages for unreleased features before the release is approved.
