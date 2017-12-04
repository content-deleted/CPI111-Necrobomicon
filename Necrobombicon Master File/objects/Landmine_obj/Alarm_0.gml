/// @description Explosion timer
// You can write your code in this editor
with (instance_create_depth(x,y,depth-1,Explosion_Basic)) {
	damage = other.damage
	image_xscale = 2
	image_yscale = 2
}
shakeScreen(30,15,0.4,true)
playSoundAtSelf(sfx_expBasic)
instance_destroy()