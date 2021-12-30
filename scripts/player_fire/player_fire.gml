///@description Fires the given wep, adds to reload
function player_fire(_wep, angle) {
	reload += max(weapon_get("name", string(_wep)).load, 1);
	scrFire(_wep, angle);
}