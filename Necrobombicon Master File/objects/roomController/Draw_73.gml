/// @description ~*~Lighting~*~
// You can write your code in this editor

if !surface_exists(dark_surface)
{
	var width = surface_get_width(application_surface)
	var height = surface_get_height(application_surface)
	dark_surface = surface_create(width,height)
}

surface_set_target(dark_surface)
draw_clear_alpha(currentDarkColor,currentDarkAlpha)

with (Light_obj) {
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sprite,frame,x-camera_get_view_x(view_camera[0]),y-camera_get_view_y(view_camera[0]),xscale,yscale,direction,color,alpha)
	gpu_set_blendmode(bm_normal)
}

surface_reset_target()
draw_surface_ext(dark_surface,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,currentDarkAlpha)