import "../../styles/clarity/tokens.css";
import type { Timeline } from "videowright";

// The whole film is one segment: its scenes, camera and copy are all driven by a
// single clock inside the website's own film module.
const timeline: Timeline = {
	meta: {
		title: "Clarity: a one-minute tour",
	},
	segments: [{ id: "clarity-film" }],
};

export default timeline;
