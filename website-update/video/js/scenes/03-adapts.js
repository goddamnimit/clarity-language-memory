// Scene 3 (0:18-0:26). The Baseline Assessment on first run, then the phone turns
// and a layer lifts away behind the glass to show an abstract difficulty dial
// easing up a notch after a correct answer. The person practising never sees it.
import { phoneBaseline, phoneQuestion } from '../screens.js';
import { glide, lerp } from '../util.js';

const BASELINE_QUESTION = {
  label: 'Question 3 of 15',
  step: 2,
  steps: 15,
  prompt: 'Is a lemon sour?',
  options: ['Yes', 'No'],
  correct: 0,
};

const ANTONYM = {
  label: 'Question 4 of 5',
  step: 3,
  steps: 5,
  prompt: 'Which word means the opposite of early?',
  options: ['Late', 'Soon', 'Quick', 'First'],
  correct: 0,
};

export default {
  id: 'adapts',
  keys: {
    cameraPosition: [[22, [-1.35, 0, 7.2]], [23.8, [-2.0, 0.1, 9.3]], [26, [-1.95, 0.1, 9.1]]],
    cameraTarget: [[22, [-1.35, 0, 0]], [23.8, [-2.0, 0, -0.6]], [26, [-1.95, 0, -0.6]]],
    phoneTurn: [[22, -0.16], [23.8, -0.8], [26, -0.74]],
  },
  phone: [
    { from: 18.1, fade: 0.6, paint: phoneBaseline({ tapAt: 19.9 }) },
    { from: 20.3, enter: 'slide', fade: 0.6, paint: phoneQuestion(BASELINE_QUESTION, { answerAt: 21.3, by: 'tap' }) },
    { from: 22.2, fade: 0.6, paint: phoneQuestion(ANTONYM, { answerAt: 24.3, by: 'tap' }) },
  ],
  update(t, state) {
    state.explode = glide(t, 22.2, 23.8) - glide(t, 26.0, 27.4);
    state.dialLevel = lerp(2, 3, glide(t, 24.7, 25.5));
  },
};
