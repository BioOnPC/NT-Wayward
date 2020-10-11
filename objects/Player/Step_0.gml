/// @description 
var mh = keyboard_check(ord("A")) - keyboard_check(ord("D")),
	mv = keyboard_check(ord("W")) - keyboard_check(ord("S"));

if(mh != 0) motion_add((90 * mh) + 90, walkspeed);
if(mv != 0) motion_add(90 * mv, walkspeed);

if(abs(hspeed) > maxspd) hspeed = maxspd * sign(hspeed);
if(abs(vspeed) > maxspd) vspeed = maxspd * sign(vspeed);

with(VisCont) {
	target = other;
	xview = other.x - (view_wport[0]/2);
	yview = other.y - (view_hport[0]/2);
}

spr_weap = wep.sprt;

gunangle = point_direction(x, y, mouse_x, mouse_y);
if(gunangle < 90 || gunangle > 270) right = 1;
if(gunangle > 90 && gunangle < 270) right = -1;

if(keyboard_check_pressed(vk_add)) global.time_scale += 0.25;
if(keyboard_check_pressed(vk_subtract)) global.time_scale -= 0.25;

if(speed != 0) sprite_index = spr_walk; else sprite_index = spr_idle;