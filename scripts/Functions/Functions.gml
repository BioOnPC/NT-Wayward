// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function room_connected_create(X, Y, LENGTH, DIRECTION){

	// LENGTH is how long the corridor connecting the spawn and the main level will be
	// i dont recommend anything lower than 2
	with instance_create(X, Y, FloorCarverRoom){
	
		direction = DIRECTION;
		maxgoal = LENGTH;
		
		return self;
	}
}

function floor_create_room(X, Y, WIDTH, HEIGHT, SPRITE_INDEX){

	var _d = 32,
		_x = X - _d * floor(WIDTH  / 2),
		_y = Y - _d * floor(HEIGHT / 2),
		_count = 0;
		
	for(var _j = 0; _j < HEIGHT; _j++){
	
		for(var _i = 0; _i < WIDTH; _i++){
	
			if (!floor_check(_x - _x mod _d, _y - _y mod _d)){
			
				with floor_create(_x - _x mod _d, _y - _y mod _d){
				
					sprite_index = SPRITE_INDEX;
				}
				_count++;
			}
			
			_x += _d;
		}
		
		_y += _d;
		_x-= _d * WIDTH;
	}
	
	return _count;
}

function floor_check(X, Y){

	if instance_place(X, Y, Floor) return true;
	return false;
}

function floor_create(X, Y){

	return instance_create_layer(X, Y, "Instances", Floor);
}
	
//[struct] create a carver:
function carver_add() constructor {
			
	// Setting up some standard vars:
	maxgoal     = 110;
	carve_speed = -1;
	turn_chance = 90;
	turns = [-90, 90];

	carver_object = FloorCarver; // What object this carver is supposed to be created as
}

//[instance] turns a carver struct into a carver instance:
function carver_create(X, Y, CARVER){
	
	
	var _vars = variable_struct_get_names(CARVER),
		_i    = 0;
	
	with instance_create(X, Y, CARVER.carver_object){
	
		repeat(array_length(_vars)){
			
			var _cvar = variable_struct_get(CARVER, _vars[_i]);
			
			if (is_struct(_cvar)){
				
				array_push(carver_queue, _cvar);
			}else{
			
				variable_instance_set(self, _vars[_i], _cvar);
			}
			_i++;
		}
		return self;
	}
}