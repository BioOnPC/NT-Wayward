// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zaxis_default(){
	if(z > 0) zspeed -= zfric;
	
	z += zspeed;
	
	if(z < 0) {
		z = -z;
		
		if(zspeed < 0) zspeed = -zspeed * zfric;
		if(zspeed < zfric) {
			zspeed = 0;
			z = 0;
		}
	}
}