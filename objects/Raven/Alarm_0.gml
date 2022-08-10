alrm[0] = 60 + irandom(30);

current_target = instance_nearest_target(x, y, true);

if(instance_exists(current_target)) {
	
	
	if(point_distance(x, y, current_target.x, current_target.y) > 128 or (random(4) < 1)) {
		
	}
}

walk = 10 + irandom(30);
walkdir = random(360);
gunangle = walkdir;