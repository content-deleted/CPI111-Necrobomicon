/// @description Begin exploding
// You can write your code in this editor
if (!exploding) {
	sprite_index = Landmine_explode_spr
	image_index = 0
	image_speed = 1
	//alarm[0] = 12
	exploding = true
	show_debug_message(string(image_index))
}