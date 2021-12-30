/// @description 
 // META STUFF, AUDIO AND CAMERA ETC ETC
audio_listener_position(x, y, z);

with(VisCont) {
	target = other;
	xview = other.x - (view_wport[0]/2);
	yview = other.y - (view_hport[0]/2);
}

 // MOVEMENT STUFF
var mh = keyboard_check(ord("A")) - keyboard_check(ord("D")),
	mv = keyboard_check(ord("W")) - keyboard_check(ord("S"));

if(mh != 0 and hspeed < maxspd) motion_add((90 * mh) + 90, min(walkspeed, maxspd - abs(hspeed)));
if(mv != 0 and vspeed < maxspd) motion_add(90 * mv, min(walkspeed, maxspd - abs(vspeed)));

if(abs(hspeed) > maxspd) hspeed = maxspd * sign(hspeed);
if(abs(vspeed) > maxspd) vspeed = maxspd * sign(vspeed);

if(speed != 0) sprite_index = spr_walk; else sprite_index = spr_idle;

 // WEAPON STUFF
spr_weap = wep.sprt;

gunangle = point_direction(x, y, mouse_x, mouse_y);
if(gunangle < 90 || gunangle > 270) right = 1;
if(gunangle > 90 && gunangle < 270) right = -1;
wkick = lerp(wkick, 0, 0.2 * ts);

if(reload > 0) reload -= ts;

 // FIRING
if(mouse_check_button_pressed(mb_left) or mouse_check_button_released(mb_left)) {
	if(ammo[wep.type] > 0) {
		while(reload <= 0 and ammo[wep.type] >= wep.cost) {
			ammo[wep.type] -= wep.cost;
			player_fire(wep.name, gunangle);
		}
	}
	else if(mouse_check_button_pressed(mb_left)) {
		snd_play(sndEmpty, 0.03, 1 + random(0.1), 0);
	}
}

if(mouse_check_button_pressed(mb_right)) with(instance_create(mouse_x, mouse_y, PopupText)) text = string(global.current_frame);