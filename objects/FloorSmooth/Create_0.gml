/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
list = ds_list_create();
smooth_factor = 10; // How many floor tiles have to surround this tile to make it create a Floor tile, logically anything higher than 8 prevents it from doing anything
floor_sprite = sprFloorTEST;

instance_place_list(x, y, Floor, list, false);

alarm[0] = room_speed * 5;