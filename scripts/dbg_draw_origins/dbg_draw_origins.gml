//shader_set(sha_wireframe);
var s = 25;
matrix_set(matrix_world,matrix_build(0,0,0,0,0,0,s,s,s));
vertex_submit(vbx_origin,pr_linelist,-1);
//shader_reset();