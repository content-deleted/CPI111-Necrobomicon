/// @description Insert description here
// You can write your code in this editor
with(Bomb_Obj)
{
	self.canFall = false;
	addVector(self,5,point_direction(self.x,self.y,other.x,other.y),1,"magnet");
}