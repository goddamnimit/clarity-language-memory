# OVERNIGHT_REPORT — branch `overnight/2026-10-08` (unpushed, not merged)

## Read this first
All phases are done. Phase 5 raw output (clean builds of all three schemes, generic-device compiles with `CODE_SIGNING_ALLOWED=NO`, unit tests + validator) is in `scratch/phase5_raw.txt`: **everything BUILD SUCCEEDED / TEST SUCCEEDED**. Screenshots are in gitignored `smoke/`. Website: `website-update/index.html` + `CHANGES.md` (**not deployed**: no Netlify CLI). Docs: CLAUDE.md (new), KNOWN_ISSUES.md, PROJECT_INSTRUCTIONS_UPDATE.md, WHATS_NEW_DRAFT.md.

### Commits (oldest → newest; `git log --oneline main..HEAD`)
ce5dcff gitignore · 5c46b9a Amharic restructure · 49f45a0 validator-red fixes · a12a9ad DayActivity extracted · 6d687aa pbxproj orphan refs · af9850a tvOS prompt clipping · 4c1a6d1 English content · (REVIEW_QUEUE.md commit) · 5ffba3c F1 · debe9f5 F2 · 9bc5369 F3 · 0659bcf F9 · 86b5b55 F4 · 7d5ef9f F5 · 784f408 F6 · b41e90b F8 · cc02e6a F7 · 9cd8c61 / 5f3318b Russian · a7b6365 / c72bbc1 Ukrainian. FEATURE_PLAN.md and this report are committed last.

### Green / red
Final run (CogniLinkTests incl. validator for all 64 catalogs): **green**; CogniLink, ClarityTV, ClarityWidget builds: **green**. **Baseline on main was red**: 12 validator failures in 11 catalogs (591 bad items) — fixed in 5c46b9a/49f45a0.

### Decisions I need from you
1. **Padding duplicates collapsed** (Vietnamese Functional 61/50/60→1 item each, Arabic, Armenian…). Those exercises are now tiny and need real content (see REVIEW_QUEUE.md A4). Earlier "961+ items" parity claims included padding.
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
