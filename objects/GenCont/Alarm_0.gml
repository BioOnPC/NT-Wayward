/// @description POST-GEN STUFF

// Smoothe terrain:
if(smooth_factor >= 0) with Floor{

	for(var _i = -1; _i <= 1; _i++){
	
		for(var _j = -1; _j <= 1; _j++){
	
			if (!floor_check(x + sprite_width * _i, y + sprite_height * _j)){
			
				with instance_create(x + sprite_width * _i, y + sprite_height * _j, FloorSmooth){
					
					smooth_factor = GenCont.smooth_factor;
					floor_sprite = other.sprite_index;
					alarm[0] = 1;
				}
			}
		}
	}
}

// "Safe" spawn:
var _floor = instance_furthest((abox_left + abox_right) / 2, (abox_top + abox_bottom) / 2, Floor);
var _dir = point_direction((abox_left + abox_right) / 2, (abox_top + abox_bottom) / 2, _floor.x, _floor.y);
var _length = 2;
with _floor{

	with room_connected_create(x, y, _length, round(_dir / 90) * 90){
	
		floor_sprite = _floor.sprite_index;
	}
}
spawn_coords = [_floor.x + lengthdir_x(32 * (2 + _length), round(_dir / 90) * 90), _floor.y + lengthdir_x(32 * (2 + _length), round(_dir / 90) * 90)];

// Place walls: DOESNT WORK
with Floor{

	for(var _i = 0; _i <= 4; _i++){
	
		for(var _j = 0; _j <= 4; _j++){
	
			if (place_free(bbox_left - 16 + 16 * _i, bbox_top - 16  + 16 * _j)){
			
				instance_create(bbox_left - 16  + 16 * _i, bbox_top - 16  + 16 * _j, Wall);
			}
		}
	}
}

instance_destroy(self, true);