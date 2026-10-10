// Scene 5 (0:36-0:46). An iPad glides in beside the phone: the PIN pad unlocks
// Caregiver Mode, then a reminder arrives on the phone's Home Screen above the
// streak and weekly-goal widgets.
import { phoneHomeScreen, tabletInsights, tabletPin } from '../screens.js';

export default {
  id: 'caregivers',
  keys: {
    cameraPosition: [[38, [0.1, -0.5, 11.5]], [43, [0.1, -0.5, 11.3]], [46, [0.4, -0.5, 11.1]]],
    cameraTarget: [[38, [0.1, -0.5, 0]], [43, [0.1, -0.5, 0]], [46, [0.4, -0.5, 0]]],
    phoneScale: [[38, 1]],
    phonePosition: [[36, [0, 0, 0]], [38, [2.75, 0, 0]], [46, [2.75, 0, 0]]],
    phoneTurn: [[38, -0.2], [46, -0.2]],
    tabletPosition: [[36, [-9, 0, -5]], [38.2, [-1.25, 0, 0]], [46, [-1.25, 0, 0]]],
    tabletTurn: [[36, 0.7], [38.2, 0.16], [46, 0.16]],
    tabletOpacity: [[36, 0], [37, 1]],
  },
  phone: [{ from: 36.2, fade: 0.8, paint: phoneHomeScreen({ bannerIn: 43.3, bannerOut: 47.2, pulse: [44.6, 46.2] }) }],
  tablet: [
    { from: 0, paint: tabletPin({ digits: [37.6, 38.0, 38.4, 38.8], unlockAt: 39.0 }) },
    { from: 39.5, fade: 0.6, paint: tabletInsights({ from: 39.6 }) },
  ],
};
