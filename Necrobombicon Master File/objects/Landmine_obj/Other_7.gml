/// @description Insert description here
// You can write your code in this editor
if(!exploding)
{
	image_speed = 0;
	image_index = 0;
}
else
{
	with (instance_create_depth(x,y,depth-1,Explosion_Basic)) {
		damage = other.damage
		image_xscale = 2
		image_yscale = 2
	}
	shakeScreen(30,15,0.4,true)
	playSoundAtSelf(sfx_expBasic)
	instance_destroy()	
}