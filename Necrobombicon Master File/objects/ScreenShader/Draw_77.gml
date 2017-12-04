/// @description Insert description here
// You can write your code in this editor

//SHADER PREPARATION//
shader_set(testShader) //bind shader
shader_set_uniform_f(s_time, shaderTime) //set shader variable
draw_self();
//draw the screen
draw_surface( application_surface, 0, 0 )

shader_reset()