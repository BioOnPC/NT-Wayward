function scrWeapons() {
	 //WEAPONS
	weapon_create("none", typ_melee, 0, 0, 0, mskNone, -1, "");
	weapon_create("revolver", typ_bullet, 1, 0, 4, sprRevolver, -1, "trusty");
	weapon_create("sledgehammer", typ_melee, 0, 0, 20, sprHammer, 1, "hard hitting").mele = 1;
	weapon_create("shotgun", typ_melee, 1, 0, 20, sprShotgun, 0, "boomstick");
	weapon_create("crossbow", typ_bolt, 1, 0, 25, sprCrossbow, 1, "fantasy");
	weapon_create("grenade launcher", typ_explo, 1, 0, 20, sprNader, 1, "kaboom");

	//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives
	var g = global;
	
	g.typ[typ_melee] = {
		ammo: 0,
		amax: 0,
		name: ""
	};
	
	g.typ[typ_bullet] = {
		ammo: 24,
		amax: 255,
		name: "bullets"
	};
	
	g.typ[typ_shell] = {
		ammo: 8,
		amax: 55,
		name: "shells"
	};
	
	g.typ[typ_bolt] = {
		ammo: 8,
		amax: 5,
		name: "bolts"
	};
	
	g.typ[typ_explo] = {
		ammo: 5,
		amax: 55,
		name: "explosives"
	};
}
