function draw_text_nt_1(argument0){
	/// @description  draw_text_nt_1(text -> data)
	/// @param text -> data
	gml_pragma("global", "global.draw_text_nt_l = ds_list_create();");
	var r = global.draw_text_nt_l;
	var s = argument0, c, k, q;
	var n = string_length(s) + 1;
	var acc = "";
	var start = 1;
	var lines = 0;
	var l_text = "";
	var l_start = 0;
	var l_extra = 0;
	for (var i = 1; i <= n; i++) {
	    if (i < n) {
	        c = string_ord_at(s, i);
	    } else c = -1;
	    //
	    switch (c) {
	        case ord("@"): break; // meta
	        case ord("#"):
	            if (i > 1 && string_ord_at(s, i - 1) == ord("\\")) continue;
	            c = -2; break; // EOL
	        case -1: break; // EOF
	        default: continue;
	    }
	    //
	    var sub = string_copy(s, start, i - start);
	    if (acc != "") acc += sub; else acc = sub;
	    if (l_text != "") l_text += sub; else l_text = sub;
	    if (c == ord("@")) {
	        c = string_ord_at(s, ++i);
	        if (c == ord("@")) {
	            start = i + 1;
	            acc += "@";
	            l_text += "@";
	            continue;
	        }
	    } else c = -1;
	    // flush:
	    if (acc != "") {
	        ds_list_add(r, [draw_text_nt_t.text, acc]);
	        acc = "";
	    }
	    // mode:
	    start = i + 1;
	    switch (c) {
	        case ord("S"): case ord("s"): ds_list_add(r, (draw_text_nt_t.silver)); break;
	        case ord("D"): case ord("d"): ds_list_add(r, (draw_text_nt_t.dark)); break;
	        case ord("Y"): case ord("y"): ds_list_add(r, (draw_text_nt_t.yellow)); break;
	        case ord("R"): case ord("r"): ds_list_add(r, (draw_text_nt_t.red)); break;
	        case ord("B"): case ord("b"): ds_list_add(r, (draw_text_nt_t.blue)); break;
	        case ord("G"): case ord("g"): ds_list_add(r, (draw_text_nt_t.green)); break;
	        case ord("P"): case ord("p"): ds_list_add(r, (draw_text_nt_t.purple)); break;
	        case ord("W"): case ord("w"): ds_list_add(r, (draw_text_nt_t.white)); break;
	        case ord("Q"): case ord("q"): ds_list_add(r, (draw_text_nt_t.cursed)); break;
	        case -2: case -1:
	            lines += 1;
	            ds_list_insert(r, l_start, [draw_text_nt_t.pre, l_text, l_extra]);
	            l_start = ds_list_size(r);
	            l_text = "";
	            l_extra = 0;
	            break;
	        default: acc = "@" + chr(c);
	    } // switch (c)
	} // for (...)
	//
	n = ds_list_size(r);
	var w;
	w[1, 3] = 0;
	w[1, 2] = s;
	w[1, 1] = lines;
	w[1, 0] = n;
	while (--n >= 0) w[0, n] = r[|n];
	ds_list_clear(r);
	//trace(s, w);
	return w;
	//
	enum draw_text_nt_t {
	    pre = 1, // (text, extra)
	    text = 2,
	    silver = 3,
	    dark = 4,
	    yellow = 5,
	    red = 6,
	    blue = 7,
	    green = 8,
	    purple = 9,
	    white = 10,
	    cursed = 11,
	    custom = 12, // (color)
	    store = 13, // (width)
	}
}