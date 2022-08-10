// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function macros_set(){
	#macro ts local_time_scale * global.time_scale
	#macro ts_anim (global.current_frame * image_speed) * ts

	 // Races
	#macro race_moth			 1
	#macro race_hermit			 2
	
	 // Weps
	#macro typ_melee			 0
	#macro typ_bullet			 1
	#macro typ_shell			 2
	#macro typ_bolt				 3
	#macro typ_explo			 4
	#macro typ_scrap			 5
	#macro typ_waste			 6
	
	 // Muts
	#macro mut_none				 0
	#macro mut_rhino_skin		 1
}