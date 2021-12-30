function scrFire(_wep, _ang) {
	switch (_wep) {	
		case "revolver": 
			projectile_create(x, y, Bullet, _ang, 10);
			snd_play(sndRevolver, 0.03, 1 + random(0.3), 0);
			weapon_post(2, 8 + random(4));
		break;
		
		default: 
			snd_play(sndEmpty, 0.03, 1 + random(0.1), 0);
			shake(10);
			sleep(20);
		break;
	}
}

	/*
	//REVOLVER
	if wep = 1
	{
	sound_play(sndPistol)
	alarm[0] = 4
	ammo[wep_type[wep]] -= 1
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(8)-4,16)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 4
	}

	//TRIPLE MACHINEGUN
	if wep = 2
	{
	sound_play(sndMachinegunLow)
	alarm[0] = 3
	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(70)-35,2+random(2))

	}
	ammo[wep_type[wep]] -= 3
	with instance_create(x,y,Bullet1)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(6)-3,16)
	image_angle = direction}
	with instance_create(x,y,Bullet1)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+20+random(6)-3,16)
	image_angle = direction}
	with instance_create(x,y,Bullet1)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)-20+random(6)-3,16)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 4
	}

	//SLEDGEHAMMER
	if wep = 3
	{
	alarm[0] = 20
	sound_play(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x,y,Slash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = Player.skill_got[13]*5
	motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
	image_angle = direction}

	wepangle = -wepangle
	motion_add(point_direction(x,y,mouse_x,mouse_y),6)
	BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y))
	BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y))
	BackCont.shake += 1
	}

	//MACHINEGUN
	if wep = 4
	{
	sound_play(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

	alarm[0] = 5
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Bullet1)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(12)-6,16)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 3
	}

	//SHOTGUN
	if wep = 5
	{
	sound_play(sndShotgun)
	alarm[0] = 20
	ammo[wep_type[wep]] -=1
	repeat(6)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(40)-20,12+random(6))
	image_angle = direction}
	}

	BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 8
	}


	//CROSSBOW
	if wep = 6
	{
	sound_play(sndCrossbow)
	alarm[0] = 25
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 4
	}

	//NADER
	if wep = 7
	{
	sound_play(sndGrenade)
	alarm[0] = 20
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Grenade)
	{
	sticky = 0
	motion_add(point_direction(x,y,mouse_x,mouse_y)+random(6)-3,10)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 2
	}

	//SUPER SHOTGUN
	if wep = 8
	{
	sound_play(sndShotgun)
	sound_play(sndShotgun)

	alarm[0] = 35
	ammo[wep_type[wep]] -=2
	repeat(12)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(50)-30,12+random(6))
	image_angle = direction}
	}

	BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 16
	}

	//MINIGUN
	if wep = 9
	{
	sound_play(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(80)-40,3+random(2))

	alarm[0] = 1
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Bullet1)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(20)-10,16)
	image_angle = direction}
	motion_add(point_direction(x,y,mouse_x,mouse_y)+180,0.6)
	BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 4
	}

	//AUTO SHOTGUN
	if wep = 10
	{
	sound_play(sndShotgun)
	alarm[0] = 4
	ammo[wep_type[wep]] -=1
	repeat(5)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(30)-15,12+random(6))
	image_angle = direction}
	}

	BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 8
	}

	//AUTO CROSSBOW
	if wep = 11
	{
	sound_play(sndCrossbow)
	alarm[0] = 8
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(4)-2,24)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 5
	}

	//SUPER CROSSBOW
	if wep = 12
	{
	sound_play(sndCrossbow)
	alarm[0] = 30
	ammo[wep_type[wep]] -= 5
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
	image_angle = direction}
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+5,24)
	image_angle = direction}
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)-5,24)
	image_angle = direction}
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)+10,24)
	image_angle = direction}
	with instance_create(x,y,Bolt)
	{motion_add(point_direction(x,y,mouse_x,mouse_y)-10,24)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(60,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(60,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 14
	}


	//SHOVEL
	if wep = 13
	{
	alarm[0] = 45
	sound_play(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x,y,Slash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = Player.skill_got[13]*5
	motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
	image_angle = direction}
	with instance_create(x,y,Slash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = Player.skill_got[13]*5
	motion_add(point_direction(x,y,mouse_x,mouse_y)+60,2+longarms)
	image_angle = direction}
	with instance_create(x,y,Slash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = Player.skill_got[13]*5
	motion_add(point_direction(x,y,mouse_x,mouse_y)-60,2+longarms)
	image_angle = direction}

	wepangle = -wepangle
	motion_add(point_direction(x,y,mouse_x,mouse_y),6)
	BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,mouse_x,mouse_y))
	BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,mouse_x,mouse_y))
	BackCont.shake += 1
	}

	//BAZOOKA
	if wep = 14
	{
	sound_play(sndRocket)
	alarm[0] = 30
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Rocket)
	{motion_add(point_direction(x,y,mouse_x,mouse_y),2)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 4
	}

	//NADER
	if wep = 15
	{
	sound_play(sndGrenade)
	alarm[0] = 25
	ammo[wep_type[wep]] -=1
	with instance_create(x,y,Grenade)
	{
	sticky = 1
	motion_add(point_direction(x,y,mouse_x,mouse_y)+random(6)-3,11)
	image_angle = direction}

	BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)
	BackCont.shake += 2
	}


}
