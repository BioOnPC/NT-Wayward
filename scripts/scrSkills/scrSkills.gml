function scrSkills() {
	global.mut_list[mut_none] = {
		name: "NOTHING",
		text: "GET NOTHING",
		elig: 0,
		ttip: ""
	};
	
	global.mut_list[mut_rhino_skin] = {
		name: "RHINO SKIN",
		text: "+4 MAX HP",
		elig: 0,
		ttip: ""
	};

	/*
	skill_name[1] = "RHINO#SKIN"
	skill_text[1] = "+4 MAX HP"

	skill_name[2] = "EXTRA#FEET"
	skill_text[2] = "+SPEED"

	skill_name[3] = "PLUTONIUM#HUNGER"
	skill_text[3] = "+ATTRACT RANGE"

	skill_name[4] = "RABBIT#PAW"
	skill_text[4] = "+ITEM DROPS"

	skill_name[5] = "WASTELAND#PRINCE"
	skill_text[5] = "UPGRADES YOUR SPECIAL ATTACK"

	skill_name[6] = "LUCKY#SHOT"
	skill_text[6] = "SOME KILLS REGENERATE AMMO"

	skill_name[7] = "BLOOD#LUST"
	skill_text[7] = "SOME KILLS REGENERATE HP"

	skill_name[8] = "GAMMA#GUTS"
	skill_text[8] = "ENEMIES TOUCHING YOU TAKE DAMAGE"

	skill_name[9] = "EXTRA#STOMACH"
	skill_text[9] = "+HP FROM MEDKITS"

	skill_name[10] = "BACK#MUSCLE"
	skill_text[10] = "+MAX AMMO"

	skill_name[11] = "SCARIER#FACE"
	skill_text[11] = "-ENEMY HP"

	skill_name[12] = "EUPHORIA"
	skill_text[12] = "SLOWER ENEMY BULLETS"

	skill_name[13] = "LONG#ARMS"
	skill_text[13] = "+MELEE RANGE"


	maxskill = 13

	dir = 0
	repeat(maxskill+1)
	{skill_got[dir] = 0
	dir += 1}*/


}

function generateMut(){
	return choose(mutRhinoSkin(), mutExtraFeet());
}

function addMut(_owner, _mut = noone, _amount = 1) {
	if(_mut == noone){
		_mut = generateMut();
	}
	_mut.amount = _amount;
	_mut.on_pick(_owner, _mut);
	if(variable_instance_exists(_owner, "mutations")) {
		var mutFound = noone;
		for(var i = 0; i < array_length(_owner.mutations); i++){
			if(_owner.mutations[i].mutid == _mut.mutid && _mut.stackable == 1){
				mutFound = i;
			}
		}
		if(mutFound == noone){
			array_push(_owner.mutations, _mut);
			_mut.on_give(_owner, _mut);
		}else{
			mutations[mutFound].amount += _amount;
			_mut.on_give(_owner, mutations[mutFound]);
		}
	}else{
		_mut.on_give(_owner, _mut);
		return _mut;
	}
}

function removeMut(_owner, _mut, _amount = 1) {
	if(_amount <= 0){
		return 0;
	}
	if(variable_instance_exists(_owner, "mutations")) {
		while(true){
			var mutFound = noone;
			for(var i = 0; i < array_length(_owner.mutations); i++){
				if(_owner.mutations[i].mutid == _mut.mutid){
					mutFound = i;
				}
			}
			if(mutFound == noone){
				return _amount;
			}else{
				var amnt = mutations[mutFound].amount;
				mutations[mutFound].amount -= min(_amount, mutations[mutFound].amount);
				_amount -= amnt;
				_mut.on_lose(_owner, mutations[mutFound]);
				if(mutations[mutFound].amount <= 0){
					array_delete(mutations, mutFound, 1);
				}
				if(_amount <= 0){
					return 0;
				}
			}
		}
	}
}

function mutDefaultEmpty(_owner, _mut) { }

function mutDefaultDraw(_owner, _mut) { 
	return _mut.hudspr;
}
