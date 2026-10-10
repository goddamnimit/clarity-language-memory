// Scene 6 (0:46-0:53). The phone and iPad drift out as a television rises from
// the haze. Two Player Mode: Player 1 answers, the remote crosses to Player 2,
// Player 2 answers.
import { tvPass, tvQuestion, tvSetup } from '../screens.js';
import { glide, lerp } from '../util.js';

const FIRST_TURN = {
  player: 0,
  scores: [0, 0],
  prompt: 'Which one does not belong?',
  options: ['Sock', 'Shoe', 'Glove', 'Spoon'],
  correct: 3,
};

const SECOND_TURN = {
  player: 1,
  scores: [1, 0],
  prompt: 'Do fish live in water?',
  options: ['Yes', 'No'],
  correct: 0,
};

export default {
  id: 'together',
  keys: {
    cameraPosition: [[48, [0, -0.35, 13.4]], [52.7, [0, -0.35, 12.9]]],
    cameraTarget: [[48, [0, -0.35, 0]], [52.7, [0, -0.35, 0]]],
    phonePosition: [[47.8, [10.5, -0.4, -3]], [52.7, [10.5, -0.4, -3]]],
    phoneTurn: [[47.8, -0.6], [52.7, -0.6]],
    tabletPosition: [[47.8, [-12, -0.4, -3]], [52.7, [-12, -0.4, -3]]],
    tabletTurn: [[47.8, 0.6], [52.7, 0.6]],
    tvPosition: [[46, [0, 0.8, -16]], [48.2, [0, 0.8, 0]], [52.7, [0, 0.8, 0]]],
    tvOpacity: [[46, 0], [47.2, 1]],
    ringScale: [[46, 1.2], [48, 1.75]],
  },
  tv: [
    { from: 0, paint: tvSetup({ pressAt: 47.9 }) },
    { from: 48.3, fade: 0.5, paint: tvQuestion(FIRST_TURN, { answerAt: 49.3 }) },
    { from: 49.9, fade: 0.5, paint: tvPass({ from: 49.9 }) },
    { from: 51.2, fade: 0.5, paint: tvQuestion(SECOND_TURN, { answerAt: 52.2 }) },
  ],
  update(t, state) {
    const presence = glide(t, 47.4, 48.5) - glide(t, 52.7, 53.5);
    const pass = glide(t, 50.0, 51.2);
    state.remote = {
      opacity: presence,
      position: [lerp(-3.75, 3.75, pass), -0.95 + 0.5 * Math.sin(Math.PI * pass) - (1 - presence) * 1.4, 1.6],
      roll: lerp(0.3, -0.3, pass),
    };
  },
};
