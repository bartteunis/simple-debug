/// Debug-draw list contents at the current position
//  TODO Optionally include list index at start of line (use an optional argument argument[1])
for(var i = 0;i < ds_list_size(argument0);i++) {
	dbg_draw(argument0[|i]);
}