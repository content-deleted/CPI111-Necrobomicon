/// @description Insert description here
// You can write your code in this editor

//AI_skeleton()

if (!canMove) {exit}

timer--
randomize()

var distance = distance_to_object(Player_obj)
var angle = point_direction(x,y,Player_obj.x,Player_obj.y)

//STATE SLECTION//
intendedDir = angle
intendedSpeed = 0
if (timer < 0) 
{
	//throw bone
	ThrowProjectile(bone_projectile_obj)
	playSoundAtSelf(sfx_bonetoss)
	audio_sound_pitch(sfx_bonetoss,random_range(0.7,1.5))
	timer = room_speed * random_range(1,3);
}