// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zaxis_default(_maxspd){
	zspeed = min(abs(zspeed), abs(_maxspd)) * sign(zspeed);
	z += zspeed;
	zspeed -= zfric;
	if(zspeed < 0) zspeed = 0;
}