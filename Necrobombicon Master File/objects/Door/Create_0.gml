/// @description Insert description here
// You can write your code in this editor
actorRoom=getActorRoom(self);
inDoorway=false;
isOpen=false;
image_speed = 0;
enum doorDir {
	north,
	east,
	south,
	west
};
doorDirection = doorDir.north;