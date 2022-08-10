draw_set_font(fntN);
draw_text_nt(VisCont.xview, VisCont.yview, text);

var _xoff = VisCont.xview + 2,
	_yoff = VisCont.yview + 2;

 // HUD DRAWING //
with(Player) {
	 // HP BAR //
	draw_set_color(hpflash mod 8 ? c_white : make_color_rgb(252, 56, 0));
	draw_rectangle(_xoff + 14, _yoff + 4, _xoff + 14 + (96 * (my_health/maxhealth)), _yoff + 11, 0);
	draw_set_color(c_white);
	
	
	 // RADS BAR //
	draw_set_color(c_black);
	draw_rectangle(_xoff + 3, _yoff + 24, _xoff + 12, _yoff + 3, 0);
	draw_set_color(radflash mod 8 ? c_white : c_lime);
	draw_rectangle(_xoff + 3, _yoff + 24, _xoff + 12, _yoff + 23 - (20 * (rads/radmax)), 0);
	draw_set_color(make_color_rgb(54, 156, 17));
	draw_rectangle(_xoff + 3, _yoff + 24, _xoff + 3, _yoff + 23 - (20 * (rads/radmax)), 0);
	draw_rectangle(_xoff + 12, _yoff + 24, _xoff + 12, _yoff + 23 - (20 * (rads/radmax)), 0);
	draw_set_color(c_white);
	
	
	 // AMMO BARS //
	draw_set_color(ammoflash mod 8 ? c_white : make_color_rgb(250, 171, 0));
	draw_rectangle(_xoff + 14, _yoff + 14, _xoff + 13 + (48 * (ammo[wep.type]/global.typ[wep.type].amax)), _yoff + 23, 0);
	draw_set_color(c_white);
	
	 // WEAPON SPRITES
	draw_sprite_part(wep.sprt, 0, 0, 0, 23, 10, _xoff + 16, _yoff + 15);
	
	
	 // WEAPON RELOAD AND TEXT //
	draw_set_halign(fa_right);
	if(wep.name != "NONE") {
		draw_set_color(c_white);
		draw_set_alpha(0.5);
		draw_rectangle(_xoff + 14, _yoff + 14, _xoff + 13 + (49 * (min(reload, wep.load)/wep.load)), _yoff + 23, 0);
		draw_set_alpha(1);
		draw_text_nt(_xoff + 60, _yoff + 15, string(ammo[wep.type]));
	}
	
	
	 // HP TEXT //
	draw_set_halign(fa_middle);
	draw_text_nt(_xoff + 62, _yoff + 4, string(my_health) + "/" + string(maxhealth));
	draw_text_nt(_xoff + 8, _yoff + 10, string(level));
	draw_set_halign(fa_left);
	
	 // HUD SPRITES //
	draw_sprite(sprHUD, other.hud, _xoff, _yoff);
	if(wep.type) draw_sprite(sprAmmoHUD, wep.type, _xoff + 29, _yoff + 19);
}