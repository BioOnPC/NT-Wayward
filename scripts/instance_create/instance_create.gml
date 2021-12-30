/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create(argument0, argument1, argument2) {
	var o = instance_create_depth(argument0, argument1, 0, argument2);
	with(o) vars_default();
	return o;
}
