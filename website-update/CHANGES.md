# Website update — what changed

**Base file:** `~/Downloads/index (7).html` (the newer version you supplied). It already contains the Home Screen widget and "Play together on Apple TV" cards and the world map; the older `~/Downloads/index.html` I used first was discarded.

## Added to "What makes Clarity different" (shipped since the last site update)
Recovery or Maintenance framing, Caregiver insights, Speak your answers (voice input, iPhone), Large text and VoiceOver.

## New "On the way" block at the end of the features section (each card has a *Coming soon* badge)
Today card, Number skills, Remember It, Visual scanning, Hints and fewer choices, Reading passages and conversation cards (English first), Second daily reminder. None of these is in a released build.

## Unchanged
16 languages (Russian and Ukrainian are preview and are NOT listed), design, the world map (the SVG block is byte-identical to the base), App Store link, Android "In Testing" button, footer, widget showcase.

## Checks
- HTML parser: no unclosed or mismatched tags (base and result).
- 375 px width: `scrollWidth == clientWidth` (no horizontal scroll); map present with 16 markers; 22 feature cards, 7 "Coming soon" badges.
- New cards have no `data-i18n` key, so they stay in English when a visitor switches the page language (the switcher only replaces keyed text). Translations for the 11 new cards are not written.

## Not done / yours
- **No deploy:** the Netlify CLI is not installed here. Drag `website-update/` into Netlify.
- The base has no privacy-policy or support link and the footer still says "Content adapted from *A Workbook for Aphasia*"; the Workbook forbids republishing its pages. Your call.
