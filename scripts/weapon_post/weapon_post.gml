/// @description Applies basic screenshake + weapon kick.
/// @param _shake Screenshake to apply.
/// @param kick  Weapon kick.
function weapon_post(_shake, kick){
	shake(_shake);
	wkick += kick;
}