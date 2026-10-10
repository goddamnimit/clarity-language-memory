// Scene 7 (0:53-1:00). The three devices settle back into soft haze behind
// "Free. Offline. Private." and the closing wordmark.
import { tvResults } from '../screens.js';

export default {
  id: 'close',
  keys: {
    cameraPosition: [[54.2, [0, 0, 13.6]], [60, [0, 0, 13.0]]],
    cameraTarget: [[54.2, [0, 0, 0]], [60, [0, 0, 0]]],
    fog: [[52.7, [16, 34]], [54.2, [6, 21]]],
    // The devices dissolve completely before the wordmark arrives.
    phoneOpacity: [[55.9, 1], [57.1, 0]],
    tabletOpacity: [[55.9, 1], [57.1, 0]],
    tvOpacity: [[55.9, 1], [57.1, 0]],
    phonePosition: [[54.2, [4.9, -1.95, -3.4]], [60, [4.8, -1.95, -3.4]]],
    phoneTurn: [[54.2, -0.34], [60, -0.3]],
    tabletPosition: [[54.2, [-4.6, -2.0, -3.2]], [60, [-4.5, -2.0, -3.2]]],
    tabletTurn: [[54.2, 0.32], [60, 0.28]],
    tvPosition: [[54.2, [0, -1.9, -6]], [60, [0, -1.9, -6]]],
    ringScale: [[52.7, 1.75], [54.4, 1.3]],
  },
  tv: [{ from: 53.0, fade: 0.6, paint: tvResults({ scores: [1, 1] }) }],
};
