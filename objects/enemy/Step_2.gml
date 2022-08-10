/// @description when u walkin

// Inherit the parent event
event_inherited();

if(walk) {
	motion_add(walkdir, min(walkspeed, maxspeed - speed));
	walk -= ts;
}