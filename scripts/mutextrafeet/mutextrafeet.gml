// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mutExtraFeet(){
	return {
		mutid: "ExtraFeet",
		name: "EXTRA FEET",
		text: "MORE SPEED",
		hudspr: sprRavenWalk,
		on_pick: mutDefaultEmpty,
		on_give: mutExtraFeetUpdate,
		//on_fire: mutDefaultEmpty,
		//on_active: mutDefaultEmpty,
		on_step: mutDefaultEmpty,
		on_draw: mutDefaultDraw,
		on_lose: mutExtraFeetUpdate,
		amount: 1,
		stackable:1,
		
		prevAmount: 0,
	}
}

function mutExtraFeetUpdate(_owner, _mut){
	with(_owner) {
		if(variable_instance_exists(self, "maxspd")) {
			var _spd = (_mut.amount - _mut.prevAmount) * 0.6;
			_mut.prevAmount = _mut.amount;
			maxspd += _spd;
		}
	}
}