/// @description Run after a tick
// You can write your code in this editor

//sfx
playSoundAtSelf(sfx_expBasic)
//screenshake
shakeScreen(12,12,0.1*room_speed)

var radius = sprite_get_width(sprite_index)/2

with(Actor_Obj)
{
	if(distance_to_object(other)<=0)
	{
		damageActor(self,other.damage,true, false, false, false);
		addVector(self, (radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
	}	
}