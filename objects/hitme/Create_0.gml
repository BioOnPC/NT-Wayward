/// @description Init generic variables
event_inherited();

 // HP:
my_health = 1;
lsthealth = my_health;
maxhealth = my_health;
invuln    = 0;

 // Movement:
walkspeed = 0.6;
fric	  = 0.15;
maxspd    = 2;

 // Visuals:
spr_idle     = mskNone;
spr_walk     = mskNone;
spr_hurt     = mskNone;
spr_dead     = mskNone;
spr_weap     = mskNone;
image_speed = 0.2;
right		= choose(1, -1);
gunangle    = random(360);
wkick       = 0;
spr_shad	= mskNone;


 // Misc:
size = 1;
alrm = [];

on_hurt = function(_damage, _knockback, _direction, _invuln) {
	my_health -= _damage;
	motion_add(_direction, _knockback);
	if(!invuln) invuln += _invuln;
}