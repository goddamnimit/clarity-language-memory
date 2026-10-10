// Scene 2 (0:06-0:18). The inner ring becomes the iPhone's outline, then a short
// session plays: Home, an odd-one-out question answered by touch, an analogy
// answered aloud, and the session-complete card.
import { phoneComplete, phoneHome, phoneQuestion } from '../screens.js';
import { glide, lerp } from '../util.js';

const ODD_ONE_OUT = {
  label: 'Question 1 of 5',
  step: 0,
  steps: 5,
  prompt: 'Which one does not belong?',
  options: ['Apple', 'Pear', 'Hammer', 'Plum'],
  correct: 2,
  note: 'Apple, pear and plum are fruit. A hammer is a tool.',
};

const ANALOGY = {
  label: 'Question 2 of 5',
  step: 1,
  steps: 5,
  prompt: 'Cold is to ice as hot is to …',
  options: ['Fire', 'Snow', 'River', 'Stone'],
  correct: 0,
  note: 'Ice is cold. Fire is hot.',
};

export default {
  id: 'app',
  keys: {
    cameraPosition: [[8.2, [-1.42, 0.03, 7.45]], [18, [-1.35, 0, 7.2]]],
    cameraTarget: [[8.2, [-1.42, 0, 0]], [18, [-1.35, 0, 0]]],
    phoneOpacity: [[7.9, 1]],
    phoneTurn: [[8.0, 0], [9.8, -0.24], [18, -0.16]],
  },
  phone: [
    { from: 0, paint: phoneHome({ tapAt: 8.5 }) },
    { from: 8.9, fade: 0.6, paint: phoneQuestion(ODD_ONE_OUT, { answerAt: 11.3, by: 'tap', mic: {} }) },
    {
      from: 12.9,
      enter: 'slide',
      fade: 0.6,
      paint: phoneQuestion(ANALOGY, {
        answerAt: 14.9,
        by: 'voice',
        mic: { listen: [13.5, 14.9], heard: { word: 'fire', at: 14.3, until: 16.2 } },
      }),
    },
    { from: 16.3, fade: 0.6, paint: phoneComplete({ from: 16.3 }) },
  ],
  update(t, state) {
    const morph = glide(t, 6.0, 7.5);
    const circle = state.firstRing.width;
    state.firstRing = {
      width: lerp(circle, 1.58, morph),
      height: lerp(circle, 3.14, morph),
      radius: lerp(circle / 2, 0.31, morph),
      opacity: 1 - glide(t, 7.5, 8.6),
      z: lerp(state.firstRing.z, 0, morph),
    };
  },
};
