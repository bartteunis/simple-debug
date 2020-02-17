//draw_text(global.debug_xstart,global.debug_ystart+(global.debug_y++)*20,json_encode(argument0));
for(var key = ds_map_find_first(argument0);!is_undefined(key);key = ds_map_find_next(argument0, key)) {
	dbg_draw(string(key) + ": " + string(argument0[?key]));
}