/// @description  weapon_set(name, type, cost, auto, reload, sprite, area, tip)
/// @param name
/// @param type
/// @param cost
/// @param auto
/// @param reload
/// @param sprite
/// @param area
/// @param tip

function weapon_create(_name, _type, _cost, _auto, _load, _sprite, _area, _tip) {
	var lq = {
		name: _name,
		type: _type,
		cost: _cost,
		auto: _auto,
		load: _load,
		sprt: _sprite,
		area: _area,
		ttip: _tip
	};
	
	if(!variable_global_exists("wep_list")) {
		global.wep_list = [];
	}
    var w = array_push(global.wep_list, lq);
	
	return global.wep_list[w];
}