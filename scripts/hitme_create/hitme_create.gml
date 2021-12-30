/// @description Creates a hitme at a given position and initializes common variables.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function hitme_create(_x, _y, obj){
	var h = instance_create(_x, _y, obj); // Z-AXIS BULLSHIT
	with(h) {
		vars_default();
		
		init_var("fric", 0);
		init_var("maxspd", 0);
	
		right = choose(-1, 1);
		init_var("spr_shad", mskNone);
		init_var("spr_shdx", 0);
		init_var("spr_shdy", 0);
		init_var("spr_shdw", 0);
		init_var("spr_shdh", 0);
	}
	
	return h;
}