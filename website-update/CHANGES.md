# Website update — what changed

**Base file:** `~/Downloads/index (7).html` (the newer version you supplied). It already contains the Home Screen widget and "Play together on Apple TV" cards and the world map; the older `~/Downloads/index.html` I used first was discarded.

## Added to "What makes Clarity different" (one regular grid, no badges)
- Shipped since the last site update: Recovery or Maintenance framing, Caregiver insights, Speak your answers (voice input), Large text and VoiceOver.
- Tonight's features, moved out of "Coming soon" so the page is ready to publish **after 4.4 is approved** (do not deploy before): Today card, Number skills, Remember It, Visual scanning, Hints and fewer choices, Reading passages and conversation cards, Second daily reminder. The "On the way" block and the Coming soon badge/CSS are gone.

## Removed
- The "A new artwork every day" card, its translations and the meta-description mention (artwork backgrounds were removed from the apps).
- The Workbook claim: the footer now reads "Some activity formats inspired by *A Workbook for Aphasia* (Cat R. Kenney)." in English and the Spanish equivalent. Only English and Spanish had the credit.

## Unchanged
16 languages (Russian and Ukrainian are preview and are NOT listed anywhere on the page), design, the world map (SVG block byte-identical to the base `index (7).html`), App Store link, Android "In Testing" button, widget showcase.

## Checks
HTML parser: no unclosed/mismatched tags. New cards have no `data-i18n` key, so they stay in English when a visitor switches the page language; page translations of the 11 new cards are not written.

## Still inaccurate / yours
- Footer and hero say "iOS 16+"; the app's deployment target is iOS 17.6.
- No privacy-policy or support link exists in the base file.
- No Netlify CLI here: drag `website-update/` into Netlify after 4.4 is approved.
