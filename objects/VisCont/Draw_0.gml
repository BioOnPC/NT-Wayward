/// @description Shadows + depth drawing
draw_surface_ext(shad, xview, yview, 1, 1, 0, c_black, 0.4);

var n = instance_number(dsorter);

ds_grid_resize(depth_grid, 2, n);

var grid_pos = 0;
var d = 0;
with(dsorter) {
	d = y;
	if(variable_instance_exists(self, "height")) d += height;
	other.depth_grid[# 0, grid_pos] = id;
	other.depth_grid[# 1, grid_pos] = d;
	grid_pos++;
}

ds_grid_sort(depth_grid, 1, true);

var inst = depth_grid[# 0, 0];
for(var i = 0; i < ds_grid_height(depth_grid); i++) {
	inst = depth_grid[# 0, i];
	with(inst) {
		if(variable_instance_exists(self, "bloom")) {
			draw_sprite_ext(sprite_index, image_index, x, y - z, image_xscale * bloom, image_yscale * bloom, image_angle, image_blend, (image_alpha * 0.2) * visible);
		}
		
		if(variable_instance_exists(self, "on_draw")) { on_draw(); }
		else draw_sprite_ext(sprite_index, image_index, x, y - z, image_xscale, image_yscale, image_angle, image_blend, image_alpha * visible);
	}
}