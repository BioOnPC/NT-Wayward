/// @description Creates a hitme at a given position and initializes common variables.
/// @param sprite The sprite index.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
function draw_timescale(_sprt, _x, _y){
	draw_sprite_ext(_sprt, ts_anim, _x, _y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}