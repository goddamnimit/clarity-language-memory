// Scene 4 (0:26-0:36). Sixteen language chips circle the phone in a tilted halo.
// The halo settles with Farsi and Arabic at the top, the phone turns once, and
// the same kind of question comes back laid out right to left, using one item
// copied from the app's own Farsi catalog.
import { FARSI_QUESTION, phoneQuestion } from '../screens.js';
import { glide, track } from '../util.js';

// Native names as the site lists them. Farsi and Arabic sit side by side so the
// halo can bring both to the top together.
export const LANGUAGES = [
  'English',
  'Español',
  'हिंदी',
  'ગુજરાતી',
  '普通话',
  'فارسی',
  'العربية',
  '한국어',
  'Tiếng Việt',
  'Português',
  'Tagalog',
  'ਪੰਜਾਬੀ',
  'Հայերեն',
  '日本語',
  'Français',
  'አማርኛ',
];
export const RIGHT_TO_LEFT = [5, 6];

const SAME_QUESTION_IN_ENGLISH = {
  label: 'Question 1 of 5',
  step: 0,
  steps: 5,
  prompt: 'Choose the word that does not belong in the group.',
  options: ['Hand', 'Foot', 'Eye', 'Book'],
  correct: 3,
};

const haloTurn = track([[26, -1.9], [33.0, 0]]);

export default {
  id: 'languages',
  keys: {
    cameraPosition: [[27.6, [0, -0.38, 13.2]], [36, [0, -0.38, 12.8]]],
    cameraTarget: [[27.6, [0, -0.38, 0]], [36, [0, -0.38, 0]]],
    phoneScale: [[26, 1], [27.6, 1.16], [36, 1.16]],
    phoneTurn: [[27.6, 0], [36, 0]],
    ringScale: [[26, 1], [27.6, 1.2]],
  },
  phone: [
    { from: 26.4, fade: 0.7, paint: phoneQuestion(SAME_QUESTION_IN_ENGLISH, { answerAt: 999, by: 'none' }) },
    { from: 33.5, fade: 0.02, paint: phoneQuestion(FARSI_QUESTION, { answerAt: 34.8, by: 'tap' }) },
  ],
  update(t, state) {
    state.halo = {
      presence: glide(t, 26.2, 28.0) - glide(t, 35.7, 37.2),
      turn: haloTurn(t),
      highlight: glide(t, 32.2, 33.2),
    };
    state.phoneSpin = -Math.PI * 2 * glide(t, 32.8, 34.2);
  },
};
