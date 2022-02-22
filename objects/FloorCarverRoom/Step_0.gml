/// @description Insert description here
// You can write your code in this editor

var _reset = false,
	_floor = 0,
    _super = carve_speed < 0; 

carve_count += max(carve_speed, 0) + _super;

do{
	for(var _i = 0; _i < (max(floor(carve_count), 0)); _i++){
	
		// Create Floor:
		if (!floor_check(x, y) && goal < maxgoal){

			with floor_create(x, y){
			
				sprite_index = other.floor_sprite;
			}
			other.goal++;
			_floor++;
		}
	
		// Move:
		x += lengthdir_x(sprite_get_width(floor_sprite),  direction);
		y += lengthdir_y(sprite_get_height(floor_sprite), direction);

		_reset = true;
	}
}until(_floor >= (1 + (_super * maxgoal - 1)));

// Reset carve_count:
if (_reset) carve_count = 0;


// Destroy if it generated enough floor tiles:
if (goal >= maxgoal){

	floor_create_room(x + lengthdir_x(sprite_get_width(floor_sprite), direction), y + lengthdir_y(sprite_get_width(floor_sprite), direction), 3, 3, floor_sprite);
	instance_destroy(self, true);
}