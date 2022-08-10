// Inherit the parent event
event_inherited();

melee_damage   = 0;
raddrop        = 0;
walk           = 0;
walkspeed      = 0.6;
walkdir        = random(360);
maxspeed       = 2;
wkick          = 0;
current_target = noone;

on_draw = function() {
	draw_hitme();
}