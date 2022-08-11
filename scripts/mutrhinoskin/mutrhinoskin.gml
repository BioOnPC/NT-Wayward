// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mutRhinoSkin(){
	return {
		mutid: "RhinoSkin",
		name: "RHINO SKIN",
		text: "+4 MAX HP",
		hudspr: mskWall,
		on_pick: mutDefaultEmpty,
		on_give: mutRhinoSkinUpdate,
		//on_fire: mutDefaultEmpty,
		//on_active: mutDefaultEmpty,
		on_step: mutDefaultEmpty,
		on_draw: mutDefaultDraw,
		on_lose: mutRhinoSkinUpdate,
		amount: 1,
		stackable:0,
		
		prevAmount: 0,
	}
}

function mutRhinoSkinUpdate(_owner, _mut){
	with(_owner) {
		if(variable_instance_exists(self, "maxhealth")) {
			var _hp = (_mut.amount - _mut.prevAmount) * 4;
			_mut.prevAmount = _mut.amount;
			maxhealth += _hp;
			if(_hp > 0) heal(_hp, 0);
			if(maxhealth < 0) maxhealth = 0;
			if(my_health > maxhealth) my_health = maxhealth;
		}
	}
}