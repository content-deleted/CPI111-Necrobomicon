/// @description Insert description here
// You can write your code in this editor
event_inherited();
playSoundAtSelf(sfx_expBasic)
//destroy destructable tiles
destroyTileColliding(self,0,0);

var radius = sprite_get_width(sprite_index)/2;
var damage = 1;

with(Actor_Obj)
{
	if(distance_to_object(other)<=0)
	{
		damageActor(self,damage,true, false, false, false);
		addVector(self, (radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
	}	
}	