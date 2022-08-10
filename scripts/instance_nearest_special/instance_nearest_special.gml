function instance_nearest_nth(_x, _y, _obj, _nth) {
	var _amt = min(max(1, _nth), instance_number(_obj)),
		_lis = ds_priority_create();
		_n   = noone;
		
	with (_obj) {
		ds_priority_add(_lis, id, distance_to_point(_x, _y));
	}	
	
	repeat (_amt) {
		_n = ds_priority_delete_min(_lis);
	}
	
	ds_priority_destroy(_lis);
	return _n;
}

function instance_nearest_var(_x, _y, _obj, _var, _equals) {
	var _r = point_distance(x, y, instance_nearest(_x, _y, _obj).x, instance_nearest(_x, _y, _obj).y),
		_n = noone;
	
	with(_obj) {
		if(variable_instance_exists(self, _var) and variable_instance_get(self, _var) == _equals) {
			if(point_distance(x, y, _x, _y) < _r) _n = self;
		}
	}
	
	return _n;
}

function instance_nearest_var_ne(_x, _y, _obj, _var, _equals) {
	var _r = point_distance(x, y, instance_nearest(_x, _y, _obj).x, instance_nearest(_x, _y, _obj).y),
		_n = noone;
	
	with(_obj) {
		if(variable_instance_exists(self, _var) and variable_instance_get(self, _var) != _equals) {
			if(point_distance(x, y, _x, _y) < _r) _n = self;
		}
	}
	
	return _n;
}

function instance_nearest_var_gt(_x, _y, _obj, _var, _equals) {
	var _r = point_distance(x, y, instance_nearest(_x, _y, _obj).x, instance_nearest(_x, _y, _obj).y),
		_n = noone;
	
	with(_obj) {
		if(variable_instance_exists(self, _var) and variable_instance_get(self, _var) > _equals) {
			if(point_distance(x, y, _x, _y) < _r) _n = self;
		}
	}
	
	return _n;
}

function instance_nearest_var_lt(_x, _y, _obj, _var, _equals) {
	var _r = point_distance(x, y, instance_nearest(_x, _y, _obj).x, instance_nearest(_x, _y, _obj).y),
		_n = noone;
	
	with(_obj) {
		if(variable_instance_exists(self, _var) and variable_instance_get(self, _var) < _equals) {
			if(point_distance(x, y, _x, _y) < _r) _n = self;
		}
	}
	
	return _n;
}

function instance_nearest_target(_x, _y, _visible) {
	var _r = infinity,
		_n = noone;
	
	with(hitme) {
		if((!_visible or !collision_line(x, y, current_target.x, current_target.y, Wall, 0, 0)) or object_get_parent(self) != prop and team != other.team) {
			if(point_distance(x, y, _x, _y) < _r) {
				_r = point_distance(x, y, _x, _y);
				_n = self;
			}
		}
	}
	
	return _n;
}