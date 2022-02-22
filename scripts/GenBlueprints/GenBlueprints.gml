// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_test1(X, Y){
	
	var field0 = new carver_add(); // Create a new carver, call it whatever
	field0.maxgoal = 80;
	field0.turn_chance = 95;
	
	field0.tunnel = new carver_add(); // Create a nested carver
	field0.tunnel.maxgoal = 40;
	field0.tunnel.direction = irandom(360);
	field0.tunnel.carve_size = 2; // create floors in pair of 2x2s, important for not having any gaps when using arbitrary directions
	field0.tunnel.turn_chance = 85;
	field0.tunnel.turns = [-50, -30, -15, -15, 0, 15, 15, 30, 50];

	carver_create(X, Y, field0);

}

function generate_test2(X, Y){
	
	var _dir = 90 * irandom(3);
	
	var field0 = new carver_add();
	field0.maxgoal = 80;
	field0.turn_chance = 90;
	
	field0.tunnel0 = new carver_add();
	field0.tunnel0.maxgoal = 20;
	field0.tunnel0.direction = _dir;
	field0.tunnel0.floor_sprite = sprFloorTEST;
	field0.tunnel0.turn_chance = 0;
	
	field0.tunnel0.field0 = new carver_add();
	field0.tunnel0.field0.maxgoal = 80;
	field0.tunnel0.field0.turn_chance = 90;
	field0.tunnel0.field0.floor_sprite = sprFloorTEST2;
	
	_dir += choose(-90, 0, 90);
	field0.tunnel0.field0.tunnel0 = new carver_add();
	field0.tunnel0.field0.tunnel0.maxgoal = 20;
	field0.tunnel0.field0.tunnel0.direction = 90 * irandom(3);
	field0.tunnel0.field0.tunnel0.turn_chance = 0;
	
	field0.tunnel0.field0.tunnel0.field0 = new carver_add();
	field0.tunnel0.field0.tunnel0.field0.maxgoal = 80;
	field0.tunnel0.field0.tunnel0.field0.turn_chance = 90;
	field0.tunnel0.field0.tunnel0.field0.floor_sprite = sprFloorTEST;
	
	carver_create(X, Y, field0);
}

function generate_test3(X, Y){
	
	var _dir = random(360),
	    _amt = 7;
	for (var _i = 0; _i < _amt; _i++){
		
		var path = new carver_add();
		path.maxgoal = 40;
		path.carve_size = 2;
		path.direction = _dir;
		path.turn_chance = 0;
		path.floor_sprite = sprFloorTEST2;
		
		path.field = new carver_add();
		path.field.maxgoal = 1;
		path.field.carve_size = 6;
		path.field.turn_chance = 95;
		
		path.field.tunnel0 = new carver_add();
		path.field.tunnel0.maxgoal = 55;
		path.field.tunnel0.direction = _dir + 360 / _amt;
		path.field.tunnel0.carve_size = 3;
		path.field.tunnel0.turn_chance = 0;
		
		path.field.tunnel1 = new carver_add();
		path.field.tunnel1.maxgoal = 55;
		path.field.tunnel1.direction = _dir - 360 / _amt;
		path.field.tunnel1.carve_size = 3;
		path.field.tunnel1.turn_chance = 0;
		
		carver_create(X, Y, path);
		_dir += 360 / _amt;
	}

}