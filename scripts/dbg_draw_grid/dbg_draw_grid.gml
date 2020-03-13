///	Draw a ds_grid
var grid = argument[0];

if (argument_count > 1) {
	var col_width = argument[1];
}

// Column headers (if provided)
if (argument_count > 2) {
	var headers = argument[2];
	dbg_draw_text(headers);
}

// Row headers (if provided)
if (argument_count > 3) {
	var row_headers = argument[3];
}

// Grid contents
for(var i = 0;i < ds_grid_height(grid);i++) {
	var row_string = "";
	for(var j = 0;j < ds_grid_width(grid);j++) {
		var val = grid[# j, i];
		var w = (argument_count > 1) ? col_width[j] : string_length(string(val));
		row_string += string_format(grid[# j, i], w, 0) + " ";
	}
	
	if (argument_count > 3) {
		row_string += row_headers[i];
	}
	
	dbg_draw_text(row_string);
}