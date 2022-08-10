/// @description Follow target if close enough
if(target != noone) {
	if(point_distance(x, y, target.x, target.y) < pull) {
		motion_add(point_direction(x, y, target.x, target.y), min(maxspd - speed, walkspeed));
	}
	
	if(place_meeting(x, y, target)) {
		if(on_pick != -1) on_pick(target);
		instance_destroy();
	}
}

