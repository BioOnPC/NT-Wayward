/// @description Insert description here
// You can write your code in this editor
if(target != noone) {
	xview = lerp(xview, target.x - (view_wport[0]/2) + xshake, 0.2);
	yview = lerp(yview, target.y - (view_hport[0]/2) + yshake, 0.2);
}

xshake = lerp(xshake, 0, 0.25);
yshake = lerp(yshake, 0, 0.25);

camera_set_view_pos(view_camera[0], xview, yview);
//view_xport[0] = yview;
//view_yport[0] = xview;