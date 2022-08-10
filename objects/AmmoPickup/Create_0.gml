/// @description Pickup script
// Inherit the parent event
event_inherited();

maxspd = 7;
multiplier = 1;

spr_shad = mskNone;
spr_shdx = -1;
spr_shdy = 2;
spr_shdw = 14;
spr_shdh = 6;

on_pick = function(_id) {
	with(_id) if(variable_instance_exists(self, "ammo")) {
		var _t = -1;
	
		if(is_array(ammo)) {
			if(!variable_instance_exists(self, "bwep") or bwep.name == "none" or ammo[bwep.type] == global.typ[bwep.type].amax) _t = wep.type;
			else _t = choose(wep.type, bwep.type);
			
			var _a = give_ammo(global.typ[_t].ammo, _t);
			
			with(instance_create(x, y, PopupText)) {
				text = _a ? 
							  "+" + string(global.typ[_t].ammo) + " " + string_upper(global.typ[_t].name) : 
							  "MAX " + string_upper(global.typ[_t].name);
				font = fntS;
			}
			
			repeat(3 + irandom(3)) with(instance_create(other.x + random(4), other.y + random(4), particle)) {
				sprite_index = sprCollectAmmo;
				motion_add(point_direction(_id.x, _id.y, x, y) + random_range(20, -20), 2 + random(2));
				fric = 0.4;
				image_angle = random(360);
				zspeed = 2 + irandom(2);
				zfric  = 0.4;
				z = 2 + random(4);
			}
		}
	}
}
