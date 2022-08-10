function skill_apply(_skill, _event, _amount) {
	switch(_event) {
		case "pick":
			switch(_skill) {
				default:
					skill_apply(_skill, "give", _amount);
				break;
			}
		break;
		
		case "give":
			switch(_skill) {
				case mut_rhino_skin:
					if(variable_instance_exists(self, "maxhealth")) {
						var _hp = _amount * 4;
						maxhealth += _hp;
						heal(_hp, 0);
					}
				break;
			}
			
			array_push(skill, _skill);
		break;
		
		case "active":
			
		break;
		
		case "lose":
			switch(_skill) {
				case mut_rhino_skin:
					if(variable_instance_exists(self, "maxhealth")) {
						var _hp = _amount * 4;
						maxhealth -= _hp;
						if(my_health > maxhealth) my_health = maxhealth;
					}
				break;
			}
		break;
	}
}