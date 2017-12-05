/// @description Insert description here
// You can write your code in this editor
event_inherited()
with(instance_create_layer(x,y,"Instances",Explosion_Basic)) {
	image_xscale=4
	image_yscale=image_xscale
	image_speed /= 2
	damage=4
}
instance_create_layer(x,y,"Sigils",scorchmark_obj);
shakeScreen(80,20,1*room_speed,true)