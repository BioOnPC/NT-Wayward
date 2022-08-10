/// @description Initialize stuff
// Inherit the parent event
event_inherited();

spr_idle = sprRavenIdle;
spr_walk = sprRavenWalk;
spr_jump = sprRavenFly;
spr_weap = mskNone;
image_speed = 0.2;

my_health = 10;
maxhealth = my_health;

raddrop	= 6;

alrm = [30 + irandom(30)];

spr_shdx = -1;
spr_shdy = 7;
spr_shdw = 16;
spr_shdh = 7;

on_draw = function() {
	draw_gun(gunangle + ((wkick * 3) * right), spr_weap);
}