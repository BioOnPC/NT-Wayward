/// @description  move_collide_adv(advanced)
/// @param advanced
function move_collide_adv(advanced){
	var xspd = hspeed * ts,
		yspd = vspeed * ts,
		xfac = max(abs(xspd * 0.1), 0.1),
		yfac = max(abs(yspd * 0.1), 0.1);
	
	x = xprevious;
	y = yprevious;
	
	 // fancy collisions oooo
	if(advanced = true) {
		trace(xfac);
		 // Horizontal
		for(var ix = 0; ix < abs(xspd); ix += xfac) {
		    if (!place_meeting(x + (sign(xspd) * xfac), y, Wall)) {
		        x += sign(xspd) * xfac;
			}
			
		    else {
				if(variable_instance_exists(self, "on_wall")) on_wall(true);
				else xspd = 0;
				
				
		        break;
		    }
		}
	
		 // Vertical
		for(var iy = 0; iy < abs(yspd); iy += yfac) {
		    if(!place_meeting(x, y + (sign(yspd) * yfac), Wall)) {
		        y += sign(yspd) * yfac; 
			}
			
			else {
				if(variable_instance_exists(self, "on_wall")) on_wall(false);
				else yspd = 0;
		        break;
		    }
		}
	}
	
	 // uncool collisions :( used for basically anything regarding enemies
	else {
		if (!place_meeting(x + xspd, y, Wall)) {
		    x += xspd;
		}
			
		else {
			if(variable_instance_exists(self, "on_wall")) on_wall(true);
			else xspd = 0;
		}
		
		if(!place_meeting(x, y + yspd, Wall)) {
		    y += yspd; 
		}
			
		else {
			if(variable_instance_exists(self, "on_wall")) on_wall(false);
			else yspd = 0;
		}
	}
	
	if(abs(hspeed) > 0) hspeed -= min((fric * sign(hspeed)) * ts, hspeed * sign(hspeed));
	if(abs(vspeed) > 0) vspeed -= min((fric * sign(vspeed)) * ts, vspeed * sign(vspeed));
}