//Shaders
//Currently set to activate in rooms 4 and 5
if(currentLocation == 4 || currentLocation == 5)
{

	//SHADER PREPARATION//
	shader_set(testShader) //bind shader
	shader_set_uniform_f(s_time, shaderTime) //set shader variable

	//draw the screen
	draw_surface( application_surface, 0, 0 );
	shader_reset();

}
