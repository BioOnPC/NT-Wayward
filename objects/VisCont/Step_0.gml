/// @description Insert description here
// You can write your code in this editor

if(target != noone) {
	xview = lerp(xview, target.x - (view_wport[0]/2) + (target.hspeed * 7), 0.2) + xshake;
	yview = lerp(yview, target.y - (view_hport[0]/2) + (target.vspeed * 7), 0.2) + yshake;
}

xshake = lerp(xshake, 0, 0.5);
yshake = lerp(yshake, 0, 0.5);

camera_set_view_pos(view_camera[0], xview, yview);
//view_xport[0] = yview;
//view_yport[0] = xview;