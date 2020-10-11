/// @description  draw_text_nt(x, y, text)
/// @param x
/// @param  y
/// @param  text
function draw_text_nt(x, y, text){
	
	gml_pragma("global", "global.draw_text_nt_map = ds_map_create(); global.draw_text_nt_list = ds_list_create();");
	var sx = argument0;
	var sy = argument1;
	var s = argument2;
	var cc = global.draw_text_nt_map;
	var d = cc[?s];
	if (d == undefined) {
	    d = draw_text_nt_1(s);
	    cc[?s] = d;
	    ds_list_add(global.draw_text_nt_list, d);
	}
	d[@ 1, 3] = global.current_frame;
	//
	var ax = draw_get_halign();
	var ay = draw_get_valign();
	var ac = draw_get_color();
	//
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	//
	var fw = string_width(string_hash_to_newline(" "));
	var fh = string_height(string_hash_to_newline("Q"));
	//
	var seed = random_get_seed();
	var _x = sx, _y = sy;
	if (ay != 0) _y -= fh * d[1, 1] * ay / 2;
	var n = d[1, 0];
	var c = c_white;
	for (var i = 0; i < n; i++) {
	    var q = d[0, i], k, v, f;
	    if (is_array(q)) k = q[0]; else k = q;
	    switch (k) {
	        case draw_text_nt_t.pre:
	            _x = sx;
	            if (ax != 0) _x -= (string_width(string_hash_to_newline(q[1])) + q[2] * fw) * ax / 2;
	            if (i != 0) _y += fh;
	            break;
	        case draw_text_nt_t.text:
	            var qs = q[1];
	            draw_set_color(c_black);
	            draw_text(_x, _y + 1, string_hash_to_newline(qs));
	            draw_text(_x + 1, _y + 1, string_hash_to_newline(qs));
	            draw_text(_x + 1, _y, string_hash_to_newline(qs));
	            draw_set_color(c);
	            draw_text(_x, _y, string_hash_to_newline(qs));
	            _x += string_width(string_hash_to_newline(qs));
	            break;
	        case draw_text_nt_t.silver:
	            c = make_color_rgb(125, 131, 141);
	            break;
	        case draw_text_nt_t.dark:
				c = make_color_rgb(59, 62, 67);
	            break;
	        case draw_text_nt_t.yellow:
				c = make_color_rgb(250, 171, 0);
	            break;
	        case draw_text_nt_t.red:
				c = make_color_rgb(252, 56, 0);
	            break;
	        case draw_text_nt_t.blue:
				c = make_color_rgb(22, 97, 223);
	            break;
	        case draw_text_nt_t.green:
				c = make_color_rgb(68, 198, 22);
	            break;
	        case draw_text_nt_t.purple:
				c = make_color_rgb(86, 34, 110);
	            break;
	        case draw_text_nt_t.white:
				c = make_color_rgb(255, 255, 255);
	            break;
	        case draw_text_nt_t.custom:
	            c = q[1];
	            break;
	        case draw_text_nt_t.cursed:
	            _x += choose(-1, 1);
	            _y += choose(-1, 1);
	            break;
	    }
	}
	draw_set_color(ac);
	draw_set_halign(ax);
	draw_set_valign(ay);
}