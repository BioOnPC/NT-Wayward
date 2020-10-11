/// @description sleep(amount)
/// @param amount
function sleep(argument0){
	var t = current_time + argument0;
	while (current_time < t) {};
}