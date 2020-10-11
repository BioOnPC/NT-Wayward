/// @description Insert description here
// You can write your code in this editor
shad = surface_create(view_wport[0], view_hport[0]);

surface_set_target(shad);
draw_clear_alpha(c_black,0);
surface_reset_target();

target = noone;
xview = 0; 
yview = 0;
xshake = 0;
yshake = 0;