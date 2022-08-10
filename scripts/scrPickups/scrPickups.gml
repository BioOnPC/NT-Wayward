function heal(_amt, _invuln){
	var _h = min(_amt, maxhealth - my_health);
	my_health += _h;
	if(variable_instance_exists(self, "hpflash")) hpflash = 3 * _invuln;
	invuln = max(_invuln, invuln);
	
	return _h;
}

function give_ammo(_amt, _type) {
	var _a = min(_amt , global.typ[_type].amax - ammo[_type]);
	ammo[_type] += _a;
	if(variable_instance_exists(self, "ammoflash")) ammoflash = 6;
	
	return _a;
}