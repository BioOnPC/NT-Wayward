/// @description Insert description here
// You can write your code in this editor
draw_text_ext_transformed(10, 10, string(instance_number(Floor)) + " FLOORS", 2, 1000, 12, 12, 0);
if (!instance_exists(GenCont)){
	
	draw_text_ext_transformed(10, 110, string(time / room_speed) + " SECONDS", 2, 1000, 12, 12, 0);	
	draw_text_ext_transformed(10, 210, string(fps) + "/" + string(room_speed ) + "FPS", 2, 1000, 12, 12, 0);
}else{

	time++;
}

