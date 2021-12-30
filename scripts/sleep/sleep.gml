/// @description sleep(amount)
/// @param amount
function sleep(argument0){
	 // ADJUST FOR FREEZE FRAMES OPTION LATER
	var t = current_time + argument0;
	while (current_time < t) {};
}