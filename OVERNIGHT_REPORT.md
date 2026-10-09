# OVERNIGHT_REPORT — branch `overnight/2026-10-08` (unpushed, not merged)

## Follow-up round (after review)
Commits: 911d6c1 `firstTryCorrect` restored to its exact main meaning (first attempt correct); the cue-aware number is the new additive field `firstTryCorrectNoCue` (documented in `ResearchExportManager`) · 3a5371b Number Skills shows the number as text and uses "Read and pick/type" wording when the language has no TTS voice (verified in Gujarati and Amharic) · ac898d8 groups with fewer than 5 items are hidden for every language, iOS and tvOS, by one rule (hidden today: Arabic ×2, Armenian ×1, Japanese ×1, Korean ×2, Spanish ×1, Vietnamese ×3) · fadfb6d Home streak card + loading text localized in all languages (weekday names via DateFormatter in the app language) · 26caf58 `xcschememanagement.plist` untracked (`xcuserdata/` was already in `.gitignore`; one more tracked file remains: `xcdebugger/Breakpoints_v2.xcbkptlist`).

**Version:** last shipped iOS 4.3.2 (per the owner), next release 4.4 (build 100, committed in 84d2e20 "Bump to 4.4 (build 100)"; the build number is an assumption). Git cannot confirm 4.3.x: no commit sets `MARKETING_VERSION` to 4.3; at e80e223 the iOS app was 4.2 (build 0), the widget 4.1 and tvOS 4.0. No tag created.
**Resolved:** the Xcode working-tree changes were reviewed and only the version lines committed. `CogniLink-Info.plist` keeps its microphone and speech strings (Xcode had duplicated them as `INFOPLIST_KEY_*` build settings, so voice input was never at risk).

### Real per-language item counts (replaces the old "961+ in every language" claim)
| Language | Items on main | Items now (branch) | Visible to users* | Visible groups |
|---|---|---|---|---|
| Punjabi | 1,239 | 1,239 | 1,239 | 61 |
| Tagalog | 1,235 | 1,235 | 1,235 | 61 |
| Portuguese | 1,217 | 1,217 | 1,217 | 61 |
| English | 1,216 | 1,216 | 1,216 | 73 |
| French | 1,212 | 1,212 | 1,212 | 67 |
| Chinese | 1,209 | 1,209 | 1,209 | 69 |
| Farsi | 1,206 | 1,206 | 1,206 | 69 |
| Hindi | 1,206 | 1,206 | 1,206 | 69 |
| Gujarati | 1,205 | 1,205 | 1,205 | 69 |
| Russian (preview) | — | 1,196 | 1,196 | 72 |
| Ukrainian (preview) | — | 1,196 | 1,196 | 72 |
| Korean | 1,167 | 1,167 | 1,160 | 64 |
| Spanish | 1,159 | 1,159 | 1,156 | 53 |
| Armenian | 1,236 | 1,114 | 1,111 | 60 |
| Amharic | 1,103 | 1,103 | 1,103 | 36 |
| Japanese | 1,058 | 1,058 | 1,054 | 63 |
| Vietnamese | 1,195 | 1,027 | 1,024 | 57 |
| Arabic | 1,199 | 1,023 | 1,019 | 59 |

\*Groups with fewer than 5 items are hidden by one central rule (`Exercise.minimumVisibleItems` in `LanguageManager`). Counts include the English-only Minimal Pairs group for English. There is **no** "961+ items in every language" parity: Arabic, Vietnamese, Armenian lost 122–168 items that were numbered duplicates, and Japanese (1,054), Vietnamese (1,024) and Arabic (1,019) are the smallest.

---

## Read this first
All phases are done. Phase 5 raw output (clean builds of all three schemes, generic-device compiles with `CODE_SIGNING_ALLOWED=NO`, unit tests + validator) is in `scratch/phase5_raw.txt`: **everything BUILD SUCCEEDED / TEST SUCCEEDED**. Screenshots are in gitignored `smoke/`. Website: `website-update/index.html` + `CHANGES.md` (**not deployed**: no Netlify CLI). Docs: CLAUDE.md (new), KNOWN_ISSUES.md, PROJECT_INSTRUCTIONS_UPDATE.md, WHATS_NEW_DRAFT.md.

### Commits (oldest → newest; `git log --oneline main..HEAD`)
ce5dcff gitignore · 5c46b9a Amharic restructure · 49f45a0 validator-red fixes · a12a9ad DayActivity extracted · 6d687aa pbxproj orphan refs · af9850a tvOS prompt clipping · 4c1a6d1 English content · (REVIEW_QUEUE.md commit) · 5ffba3c F1 · debe9f5 F2 · 9bc5369 F3 · 0659bcf F9 · 86b5b55 F4 · 7d5ef9f F5 · 784f408 F6 · b41e90b F8 · cc02e6a F7 · 9cd8c61 / 5f3318b Russian · a7b6365 / c72bbc1 Ukrainian. FEATURE_PLAN.md and this report are committed last.

### Green / red
Final run (CogniLinkTests incl. validator for all 64 catalogs): **green**; CogniLink, ClarityTV, ClarityWidget builds: **green**. **Baseline on main was red**: 12 validator failures in 11 catalogs (591 bad items) — fixed in 5c46b9a/49f45a0.

### Decisions I need from you
1. **Padding duplicates collapsed** (Vietnamese Functional 61/50/60→1 item each, Arabic, Armenian…). Those groups are now hidden until they have 5 items; they need real content (REVIEW_QUEUE.md A4). Item counts are not at parity (table above).
2. **Amharic** three catch-all files were split into typed exercises with Amharic titles I wrote (review needed, A1).
3. **AppProgressView** kept (has a unique weekly Charts bar chart + accordion). `DayActivity` extracted; delete or port?
4. **pbxproj**: added the two orphan refs (AppTheme/WidgetSnapshot) to the main group; open Xcode once to confirm "Recovered References" is gone.
5. **App Group**: code and both entitlements all say `group.com.nimitdesai.clarity.shared` (ClarityTV has none). Real-device check still yours.
6. **Site attribution** ("Content adapted from A Workbook for Aphasia") conflicts with the Workbook's no-republishing terms — decide before more site work. The only site source I found is `~/Downloads/index.html` (Jul 5, older than the live site: lacks widget and Apple TV two-player cards). No privacy/support link and no "dateline map" exist in either copy.
7. **Preview languages** Russian + Ukrainian are hidden (`AppLanguage.isPreview`, `visibleCases`); all content/UI machine-adapted by subagents, **needs native review before unhiding**. Second language chosen: Ukrainian (Thai also has TTS+STT; Khmer neither; Gujarati/Farsi/Punjabi/Armenian/Amharic/Tagalog have NO system TTS voice on the Mac I checked).

### New features (all iOS; tvOS unaffected/hidden; designs in FEATURE_PLAN.md)
F1 Today card · F2 answer-choice count · F3 cue ladder (additive export fields `cuedItems`, `cueLevelCounts`; `firstTryCorrect` now = independent first try) · F4 Number Skills (+ new iOS speech output) · F5 Remember It (targets in Keychain, tested absent from export) · F6 Visual Scanning · F7 Conversation Starters (English only) · F8 Reading Passages (English only) · F9 second reminder. 16-language strings for F1–F6, F9; F7/F8 hidden outside English. Nothing reverted.

### Other findings
- iOS had no TTS before F4. The Home streak widget ("day streak", "Personal Best", weekday names) is English in every language. `ExerciseContainerView` loading text is Hindi for all languages.
- Self-referential synonym items, Arabic echo explanations, JURY/PLAINTIFF cross-out etc.: REVIEW_QUEUE.md. Factual-staleness sweep: none of the workbook errors you listed exist in any language; only the population item was date-stamped.
- Repo hygiene: `ArtworkSource/` 264 MB tracked; `xcuserdata/.../xcschememanagement.plist` tracked; empty explanations remain in Chinese/Farsi/Gujarati/Hindi/Portuguese (~1,580).
- Deviation: I briefly launched one subagent for research fetching (stopped immediately; outside the "translation only" rule). Translation subagents: 6 (Russian ×3, Ukrainian ×3), all results re-verified by script.
- tvOS prompt-clipping fixed and verified with simulator screenshots (before/after in `smoke/`, gitignored).

### Next steps
1. Review/merge branch (or cherry-pick). 2. Finish Phase 6/7 + What's New blurb. 3. Native review of Amharic titles, Russian, Ukrainian, F5 copy. 4. Regenerate the collapsed exercises' content. 5. Bump versions yourself (untouched).
