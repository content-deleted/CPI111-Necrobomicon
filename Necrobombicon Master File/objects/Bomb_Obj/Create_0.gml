/// @description Insert description here
// You can write your code in this 
event_inherited();
inWall = false;
if (checkTileCollision(self,0,0))
{
	inWall = true;
	instance_destroy();
} else {
	audio_play_sound(choose(sfx_gjThrow1),1,false) //only play bomb sfx if it actually spawns successfully
}
pushable = true;
isSolid = true;
