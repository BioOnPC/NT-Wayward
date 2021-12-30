/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(shad)) {
	shad = surface_create(view_wport[0], view_hport[0]);
}

surface_set_target(shad);
draw_clear_alpha(c_black, 0);

scrShadows();
surface_reset_target();