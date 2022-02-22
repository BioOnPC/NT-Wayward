/// @description Insert description here
// You can write your code in this editor
var _count = ds_list_size(list);
ds_list_destroy(list);

// Create a floor tile if its surrounded by a certain amount of floor tiles:
if (_count >= smooth_factor){

	with floor_create(x, y){
	
		sprite_index = other.floor_sprite;
	}
}