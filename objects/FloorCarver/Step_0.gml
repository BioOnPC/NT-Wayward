/// @description Insert description here
// You can write your code in this editor

var _reset = false,
	_floor = 0,
    _super = carve_speed < 0; 

carve_count += max(carve_speed, 0) + _super;

do{
	for(var _i = 0; _i < (max(floor(carve_count), 0)); _i++){
	
		// Create Floor, but only if floor doesnt already exist:
		if (goal < maxgoal){

			var _v = floor_create_room(x, y, carve_size, carve_size, floor_sprite);
			goal += _v;
			_floor += _v;
		}
	
		// Move:
		x += lengthdir_x(sprite_get_width(floor_sprite), direction);
		y += lengthdir_y(sprite_get_height(floor_sprite), direction);
		
		// Track aera bounds:
		if (instance_exists(GenCont)){
			
			if (x < GenCont.abox_left) GenCont.abox_left = x;
			if (x > GenCont.abox_right) GenCont.abox_right = x;
			if (y < GenCont.abox_top) GenCont.abox_top = y;
			if (y > GenCont.abox_bottom) GenCont.abox_bottom = y;
		}

		// Random turn chance:
		if (irandom(99) < turn_chance) direction += turns[irandom(array_length(turns) - 1)];

		_reset = true;
	}
}until(_floor >= (1 + (_super * maxgoal - 1)));

// Reset carve_count:
if (_reset) carve_count = 0;


// Destroy if it generated enough floor tiles:
if (goal >= maxgoal) instance_destroy(self, true);