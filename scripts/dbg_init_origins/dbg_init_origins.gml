///	dbg_init_origins()
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_color();
var fmt = vertex_format_end();

vbx_origin = vertex_create_buffer();

vertex_begin(vbx_origin,fmt);
vertex_position_3d(vbx_origin,0,0,0);	// X
vertex_color(vbx_origin,c_red,1);
vertex_position_3d(vbx_origin,1,0,0);
vertex_color(vbx_origin,c_red,1);
vertex_position_3d(vbx_origin,0,0,0);	// Y
vertex_color(vbx_origin,c_green,1);
vertex_position_3d(vbx_origin,0,1,0);
vertex_color(vbx_origin,c_green,1);
vertex_position_3d(vbx_origin,0,0,0);	// Z
vertex_color(vbx_origin,c_blue,1);
vertex_position_3d(vbx_origin,0,0,1);
vertex_color(vbx_origin,c_blue,1);
vertex_end(vbx_origin);