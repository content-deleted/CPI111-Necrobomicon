/// @description Insert description here
// You can write your code in this editor
event_inherited()
with(instance_create_layer(x,y,"Instances",Explosion_Basic)) {
	image_xscale=4
	image_yscale=image_xscale
	damage=4
	shakeScreen(20,20,0.4)
}