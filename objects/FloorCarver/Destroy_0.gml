/// @description Insert description here

// Create carvers in carver queue
if (array_length(carver_queue) > 0){
	
	var _i = 0;
	repeat(array_length(carver_queue)){
	
		carver_create(x, y, carver_queue[_i++]);
	}
}

if (instance_exists(GenCont)) GenCont.carvers--;