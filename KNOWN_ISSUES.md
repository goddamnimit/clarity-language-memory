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
