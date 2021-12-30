vspeed = -0.75;
y -= 8;
time = 10;
text = "";

height = 20;

execute every 2 frames
	if(executed_frames >= 60 * ts) {
		if(executed_frames mod 4 * ts = 0) {
			visible = !visible;
			vspeed = 0
			time -= ts;
			if (time <= 0) instance_destroy();
		}
	}
done

on_draw = function() {
	if(visible) {
		draw_set_halign(fa_middle);
		draw_text_nt(x, y, text);
		draw_set_halign(fa_left);
	}
}