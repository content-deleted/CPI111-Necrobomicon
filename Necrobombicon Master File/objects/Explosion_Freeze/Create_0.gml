/// @description Insert description here
// You can write your code in this editor
event_inherited();

playSoundAtSelf(sfx_expBasic)
playSoundAtSelf(sfx_expFreeze)
audio_sound_pitch(sfx_expFreeze,random_range(2,3))

var radius = sprite_get_width(sprite_index);
var freezeSeconds = 4;

with(Projectile_Obj)
{
	if(distance_to_object(other)<=0)
		instance_destroy();
}

with(Actor_Obj)
{
	if(distance_to_object(other)<=0)
	{
		if (isInvincible == false)
		{
			//isInvincible = true;
			//image_index = 0;
			canMove = false;
			xSpeed = 0;
			ySpeed = 0;
			//Recolor now happens in Actor_Obj Pre-Draw
			//image_speed = 0;
			//image_blend = c_blue;
			alarm[3] = room_speed * freezeSeconds;
			addVector(self,(radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
		}
	}	
}	

image_blend = c_blue;