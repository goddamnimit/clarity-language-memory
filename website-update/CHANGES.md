# Website update — what changed

**Base file:** `~/Downloads/index.html` (dated Jul 5), the only copy of the site source found on this machine (no `netlify.toml`, no repo). The live page at claritymemoryandcognition.netlify.app is newer (it already has the Home Screen widget and Apple TV two-player cards); I reconstructed those two cards from the live text.

## Added to "What makes Clarity different"
Shipped since the last update: Home Screen widget, Play together on Apple TV, Recovery vs Maintenance framing, Caregiver insights, Speak your answers (voice input, iPhone), Large text and VoiceOver.

## New "On the way" block (each card has a *Coming soon* badge)
Today card, Number skills, Remember It, Visual scanning, Hints and fewer choices, Reading passages and conversation cards (English first), Second daily reminder. These are not in a released build.

## Unchanged
16 languages (Russian and Ukrainian are preview and are NOT listed), design, App Store link, Android "In Testing" button, footer.

## Checks
Tag balance verified with an HTML parser (no unclosed or mismatched tags). At 375 px width: `scrollWidth == clientWidth` (no horizontal scroll). New cards have no `data-i18n`, so they stay in English when a visitor switches the page language (the language switcher only replaces keyed text).

## Things I could not do / need you
- **No deploy:** the Netlify CLI is not installed here. Drag `website-update/` into Netlify.
- There is **no privacy-policy or support link** and **no "dateline-fixed map"** in either the local copy or the live page text, so there was nothing to keep or break. Tell me what the map is if it exists elsewhere.
- The footer says "Content adapted from *A Workbook for Aphasia*"; the Workbook forbids republishing its pages. Review that line.
- Page translations for the new cards (15 languages) are not written.
