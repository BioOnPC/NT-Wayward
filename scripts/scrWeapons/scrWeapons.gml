function scrWeapons() {
	 //WEAPONS
	weapon_create("none", typ_melee, 0, 0, 0, mskNone, -1, "");
	weapon_create("revolver", typ_bullet, 1, 0, 8, sprRevolver, -1, "trusty");
	weapon_create("sledgehammer", typ_melee, 0, 0, 40, sprHammer, 1, "hard hitting").mele = 1;
	weapon_create("shotgun", typ_melee, 1, 0, 40, sprShotgun, 0, "boomstick");
	weapon_create("crossbow", typ_bolt, 1, 0, 50, sprCrossbow, 1, "fantasy");
	weapon_create("grenade launcher", typ_explo, 1, 0, 40, sprNader, 1, "kaboom");

	//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives
	global.typ[typ_melee] = {
		ammo: 0,
		amax: 0,
		name: ""
	};
	
	global.typ[typ_bullet] = {
		ammo: 24,
		amax: 255,
		name: "bullets"
	};
	
	global.typ[typ_shell] = {
		ammo: 8,
		amax: 55,
		name: "shells"
	};
	
	global.typ[typ_bolt] = {
		ammo: 8,
		amax: 5,
		name: "bolts"
	};
	
	global.typ[typ_explo] = {
		ammo: 5,
		amax: 55,
		name: "explosives"
	};
	
	global.typ[typ_scrap] = {
		ammo: 10,
		amax: 55,
		name: "fuel"
	};
	
	global.typ[typ_waste] = {
		ammo: 7,
		amax: 55,
		name: "waste"
	};
}
