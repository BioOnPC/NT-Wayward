
function draw_gun(_ang, _wep){
	if(_ang <= 180) draw_sprite_ext(_wep, ts_anim, x, y, image_xscale, image_yscale * right, _ang, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, ts_anim, x, y, image_xscale * right, image_yscale, image_angle, image_blend, image_alpha);
	if(_ang > 180) draw_sprite_ext(_wep, ts_anim, x, y, image_xscale, image_yscale * right, _ang, image_blend, image_alpha);
}