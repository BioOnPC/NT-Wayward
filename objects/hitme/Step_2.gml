/// @description Handle generic hitme stuff here

// Inherit the parent event
event_inherited();

 // Handle alarms with time scale:
if(array_length(alrm)) {
	for(var i = 0; i < array_length(alrm); i++) {
		if(alrm[i] > 0) {
			alrm[i] -= ts;
			
			if(alrm[i] <= 0) {
				alrm[i] = 0;
				event_perform(ev_alarm, i);
			}
		}
	}
}

if(gunangle < 90 || gunangle > 270) right = 1;
if(gunangle > 90 && gunangle < 270) right = -1;
wkick = lerp(wkick, 0, 0.2 * ts);

 // Adjust image_index for timescale:
image_index += image_speed * (ts - 1);

 // Handle iframes:
if(invuln) {
	invuln -= ts;
	
	if(lsthealth > my_health) my_health = lsthealth;
}

if(speed) {
	if(spr_walk != mskNone and sprite_index = spr_idle) sprite_index = spr_walk;
}

else if(sprite_index = spr_walk) sprite_index = spr_idle;


 // Keep health up to date:
lsthealth = my_health;