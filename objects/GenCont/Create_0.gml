/// @description Insert description here
// You can write your code in this editor
abox_left   = room_width; // area bounding boxes for determining safe spawns
abox_right  = 0;
abox_top    = room_height;
abox_bottom = 0;

smooth_factor = -1; // How many tiles an empty tile has to be surrounded by to create a floor tile

spawn_coords = [0, 0]; // This is where players will spawn

carvers = 0; // Keeps track of how many carvers exist
is_done = false; // Whether or not generation is done


generate_test2(room_width / 2, room_height / 2);
