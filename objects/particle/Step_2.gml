zaxis_default();

var xspd = hspeed * ts,
	yspd = vspeed * ts;

x = xprevious + xspd;
y = yprevious + yspd;
	
if(abs(hspeed) > 0) hspeed -= min((fric * sign(hspeed)) * ts, hspeed * sign(hspeed));
if(abs(vspeed) > 0) vspeed -= min((fric * sign(vspeed)) * ts, vspeed * sign(vspeed));