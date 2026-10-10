// Known limitation: videowright boots the page in real time before it engages its
// virtual clock, so ctx.clock() is already a few seconds in when capture starts and
// the render runs ahead of the film. Use `npm run render` (scripts/capture.mjs) for
// masters until this wrapper starts its clock when virtual time engages.
//
// Thin videowright wrapper around the website's film. `film/` is a synced copy
// of website-update/video (see `npm run sync`), because videowright's dev server
// only serves files inside this project folder.
import { defineSegment } from "videowright";
import "../../film/css/player.css";
import { DURATION, createFilm } from "../../film/js/film.js";
import { loadFonts } from "../../film/js/fonts.js";

// Fonts are fetched before the render clock starts so the first frame is complete.
await loadFonts();

type Film = Awaited<ReturnType<typeof createFilm>>;
let host: HTMLElement | null = null;
let film: Film | null = null;
let frame = 0;

export default defineSegment({
	id: "clarity-film",
	advances: [DURATION],

	mount(el) {
		host = el;
		el.innerHTML = `
			<div class="stage" style="width: 100%; height: 100%; max-height: none">
				<canvas></canvas>
				<div class="type-layer"></div>
			</div>`;
	},

	async play(ctx) {
		const stage = host?.querySelector<HTMLElement>(".stage");
		if (!stage) return;
		const { width, height } = stage.getBoundingClientRect();
		stage.querySelector<HTMLElement>(".type-layer")!.style.transform = `scale(${width / 1920})`;
		film = await createFilm(stage, { capture: ctx.mode === "render" });
		film.resize(width, height, 1);

		const draw = () => {
			film?.seek(Math.min(DURATION, ctx.clock() / 1000));
			frame = requestAnimationFrame(draw);
		};
		draw();
		await ctx.waitForNext();
	},

	unmount() {
		cancelAnimationFrame(frame);
		film?.dispose();
		film = null;
		host = null;
	},
});
