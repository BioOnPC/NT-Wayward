/// @description 
 // META STUFF, AUDIO AND CAMERA ETC ETC
audio_listener_position(x, y, z);

with(VisCont) {
	target = other;
	xview = other.x - (view_wport[0]/2);
	yview = other.y - (view_hport[0]/2);
}

with(pickup) {
	if(point_distance(x, y, other.x, other.y) < pull and !target) {
		target = other;
	}
}

if(ammoflash) ammoflash -= ts;
if(hpflash)   hpflash   -= ts;
if(radflash)  radflash  -= ts;

if(place_meeting(x, y, interactable)) interact = instance_nearest(x, y, interactable);
else if(interact != noone) {
	if(interact.target = self) interact.target = noone;
	interact = noone;
}

 // MOVEMENT STUFF
var mh = keyboard_check(ord("A")) - keyboard_check(ord("D")),
	mv = keyboard_check(ord("W")) - keyboard_check(ord("S"));

if(mh != 0 and hspeed < maxspd) motion_add((90 * mh) + 90, min(walkspeed, maxspd - abs(hspeed)));
if(mv != 0 and vspeed < maxspd) motion_add(90 * mv, min(walkspeed, maxspd - abs(vspeed)));

if(abs(hspeed) > maxspd) hspeed = maxspd * sign(hspeed);
if(abs(vspeed) > maxspd) vspeed = maxspd * sign(vspeed);

 // WEAPON STUFF
spr_weap = wep.sprt;

gunangle = point_direction(x, y, mouse_x, mouse_y);

if(reload > 0) reload -= ts;

 // FIRING
if(mouse_check_button_pressed(mb_left)) {
	if(ammo[wep.type] > 0) {
		while(reload <= 0 and ammo[wep.type] >= wep.cost) {
			ammo[wep.type] -= wep.cost;
			player_fire(wep.name, gunangle);
		}
	}
	else if(mouse_check_button_pressed(mb_left) and !reload) {
		spawn_popup(x, y, ammo[wep.type] = 0 ? "EMPTY!" : "NOT ENOUGH " + string_upper(string(global.typ[wep.type].name)) + "!");
		snd_play(sndEmpty, 0.03, 1 + random(0.1), 0);
		weapon_post(0, -2 - random(4));
		reload += 4;
	}
}

if(mouse_check_button_pressed(mb_right)) with(instance_create(mouse_x, mouse_y, HealthPickup)) {
	zspeed += 3 + irandom(2);
	motion_add(random(360), 2 + random(2));
}

if(keyboard_check_pressed(vk_add)) skill_apply(mut_rhino_skin, "pick", 1);
if(keyboard_check_pressed(vk_subtract)) skill_apply(mut_rhino_skin, "lose", 1);