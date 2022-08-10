/// @description Creates a projectile at a given position and initializes common variables.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
/// @param ang The direction the projectile should be going in.
/// @param _spd The speed the projectile should be going at.
function projectile_create(_x, _y, obj, ang, _spd){
	var h = instance_create(_x, _y, obj); // Z-AXIS BULLSHIT
	with(h) {
		z      = 0;
		init_var("zspeed", 0);
		init_var("zfric",  0);
		
		init_var("fric", 0);
		init_var("maxspd", 0);
		
		name  = object_get_name(object_index);
		hitid = [sprite_index, name];
		
		motion_add(ang, _spd);
		image_angle = direction;
	}
	
	return h;
}