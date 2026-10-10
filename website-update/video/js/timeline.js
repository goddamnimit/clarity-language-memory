// Every line of on-screen copy and when it appears. Times are seconds on the
// master clock; the scenes themselves live in ./scenes/.

export const DURATION = 60;

export const SITE_URL = 'claritymemoryandcognition.netlify.app';

/*
 * Copy markup: *asterisks* mark the italic sage emphasis, | is a line break.
 * `layout` picks where the line sits: centre stage, the left column beside a
 * device, or the lower band under a wide composition.
 */
export const COPY = [
  { at: [0.5, 5.7], kind: 'headline', layout: 'center', text: 'Words, one *gentle* step|at a time.' },
  { at: [3.1, 5.7], kind: 'sub', layout: 'center', text: 'Language and memory practice, at your own pace.' },

  { at: [6.7, 17.8], kind: 'eyebrow', layout: 'left', text: 'The app' },
  { at: [6.8, 10.2], kind: 'caption', layout: 'left', text: 'Short sessions: *five questions* at a time.' },
  { at: [10.4, 14.0], kind: 'caption', layout: 'left', text: 'Tap an answer, or *say it aloud.*' },
  { at: [14.2, 17.8], kind: 'caption', layout: 'left', text: '*Calm,* encouraging feedback.' },

  { at: [18.2, 25.8], kind: 'eyebrow', layout: 'left', text: 'Adapts quietly' },
  { at: [18.3, 21.9], kind: 'caption', layout: 'left', text: 'A short *Baseline Assessment* sets a starting level.' },
  { at: [22.1, 25.8], kind: 'caption', layout: 'left', text: 'Then difficulty adapts *quietly* in the background.' },

  { at: [27.1, 35.9], kind: 'eyebrow', layout: 'bottom', text: 'Languages' },
  { at: [27.2, 29.8], kind: 'caption', layout: 'bottom', text: '*16 languages,* one app.' },
  { at: [30.0, 32.6], kind: 'caption', layout: 'bottom', text: 'More than *18,000* practice questions.' },
  { at: [32.8, 35.9], kind: 'caption', layout: 'bottom', text: 'Farsi and Arabic read *right to left.* So does Clarity.' },

  { at: [36.4, 45.9], kind: 'eyebrow', layout: 'bottom', text: 'For caregivers' },
  { at: [36.5, 39.5], kind: 'caption', layout: 'bottom', text: 'Caregiver Mode, protected by a *PIN.*' },
  { at: [39.7, 43.0], kind: 'caption', layout: 'bottom', text: '*Plain-language* insights and a PDF progress report.' },
  { at: [43.2, 45.9], kind: 'caption', layout: 'bottom', text: 'Gentle reminders, and a *widget* on the Home Screen.' },

  { at: [46.5, 52.8], kind: 'eyebrow', layout: 'bottom', text: 'Apple TV' },
  { at: [46.6, 49.6], kind: 'caption', layout: 'bottom', text: '*Together* on Apple TV.' },
  { at: [49.8, 52.8], kind: 'caption', layout: 'bottom', text: 'Two Player Mode: take turns with *one remote.*' },

  { at: [53.9, 56.6], kind: 'headline', layout: 'center', text: 'Free. Offline. *Private.*' },
  {
    at: [56.9, 60.5],
    kind: 'brand',
    layout: 'center',
    text: `Clarity. Free on the App Store for iPhone, iPad and Apple TV. ${SITE_URL}. Android coming soon.`,
  },
];

/** Lines that belong in the caption file and transcript (labels are decorative). */
export const CAPTIONS = COPY.filter((line) => line.kind !== 'eyebrow').map((line) => ({
  start: line.at[0],
  end: Math.min(line.at[1], DURATION),
  text: line.text.replace(/\*/g, '').replace(/\|/g, ' '),
}));
