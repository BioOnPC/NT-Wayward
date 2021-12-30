/// @description 
event_inherited();
walkspeed = 0.6;
fric = 0.15;
maxspd = 2;
movetyp = true;
audio_listener_orientation(0, -1, 0, 0, 0, -1);


 // WEAPON STUFF
wep = weapon_get("name", "revolver");
spr_weap = mskNone;
reload   = 0;
gunangle = 0;
wkick	 = 0;

 // AMMO STUFF
for(var i = 0; i < array_length(global.typ) - 1; i++) {
	if(i = wep.type) ammo[i] = global.typ[i].ammo * 4;
	else ammo[i] = 0;
}

 // VISUAL STUFF
spr_idle = sprMutant1Idle;
spr_walk = sprMutant1Walk;
spr_shdx = -1;
spr_shdy = 7;
spr_shdw = 16;
spr_shdh = 7;
image_speed = 0.2;

on_draw = function() {
	draw_gun(gunangle + ((wkick * 3) * right), wep.sprt);
}