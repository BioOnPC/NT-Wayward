/// @description  weapon_get(attribute, val)
/// @param attribute
/// @param val

function weapon_get(att, val = -1){
	var wg = [];
	
	for(var i = 0; i < array_length(global.wep_list); i++) {
		var attvar = variable_instance_get(global.wep_list[i], string(att));
		if(attvar != undefined and (argument_count = 1 or attvar = val)) array_push(wg, global.wep_list[i]);
	}
	
	if(array_length(wg) = 1) return wg[0];
	return wg;
}