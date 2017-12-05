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

var tilemap = layer_tilemap_get_id("roomTiles");
var myRoom = tilemap_get_at_pixel(tilemap,x,y);
if (myRoom != tilemap_get_at_pixel(tilemap,x,y-100))
	doorDirection = doorDir.north;
else if (myRoom != tilemap_get_at_pixel(tilemap,x,y+100))
	doorDirection = doorDir.south;
else if (myRoom != tilemap_get_at_pixel(tilemap,x+100,y))
	doorDirection = doorDir.east;
else
	doorDirection = doorDir.west;