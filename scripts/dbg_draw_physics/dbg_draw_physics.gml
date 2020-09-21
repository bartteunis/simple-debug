/// Draw the physics representation of the game world
///	dbg_draw_physics(pixel_to_meter)
var _c = draw_get_color();			// FIX that draw color bug...
var physics_scale = argument0;		// Equal to pixel to meter of physics world (half of that for some reason... => ratio is wrong)
var mat_trf = matrix_build(
	global.debug_xstart, global.debug_ystart+global.debug_y*global.debug_line_height, 0,
	0, 0, 0,
	physics_scale, 
	physics_scale, 
	physics_scale
);
matrix_set(matrix_world,mat_trf);

	physics_world_draw_debug(
		phy_debug_render_aabb|
		phy_debug_render_collision_pairs|
		phy_debug_render_coms|
		phy_debug_render_core_shapes|
		phy_debug_render_joints|
		phy_debug_render_obb|
		phy_debug_render_shapes
	);

matrix_set(matrix_world,global.mat_identity);

draw_set_color(_c);					// FIX that draw color bug...