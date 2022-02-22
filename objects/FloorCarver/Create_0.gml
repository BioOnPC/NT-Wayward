/// @description Insert description here
// You can write your code in this editor

maxgoal     = 110; // How many floors to create
goal        = 0;   // How many floors have been created by this specific carver
carve_speed = -1;  // How many floors to carve per step, -1 for instant generation, can take decimals
carve_count = 0;   // Placeholder var for carve_speed
carve_size  = 1;   // "Brush size" of the carver

turn_chance = 90;  // % Chance to change direction, set to 0 to not turn
turns = [-90, 90]; // How much to turn in degrees

floor_sprite = sprFloor1;
direction = 90 * irandom(3);

carver_object = FloorCarver;
carver_queue = []; // Array of carvers to be created on destroy

if (instance_exists(GenCont)) GenCont.carvers++;