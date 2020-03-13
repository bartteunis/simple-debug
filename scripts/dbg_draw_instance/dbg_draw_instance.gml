/// dbg_draw_instance(instance)
var arr_names = variable_instance_get_names(argument0);
for(var i = 0;i < array_length_1d(arr_names);i++) {
	var name = arr_names[i];
	var value = variable_instance_get(argument0, name);
	dbg_draw_text(name + ": " + string(value));
}