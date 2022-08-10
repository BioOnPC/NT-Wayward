// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrShadows(){
	var xv = xview,
		yv = yview
	
	with(moveable) {
		if(variable_instance_exists(self, "spr_shad")) {
			if(spr_shad != mskNone) draw_sprite(spr_shad, -1, x - xv + spr_shdx, y - yv + spr_shdy);
			else if(spr_shdw > 0 or spr_shdh > 0) draw_ellipse(x - xv + spr_shdx - floor(spr_shdw/2), 
															   y - yv + spr_shdy - floor(spr_shdh/2), 
															   x - xv + spr_shdx + ceil(spr_shdw/2), 
															   y - yv + spr_shdy + ceil(spr_shdh/2), 0);
		}
	}

	with(Wall) draw_sprite(sprite_index, 0, x - xv, y - yv + 10);
}