/// @description Insert description here
// You can write your code in this editor
if(roomController.roomCleared)
{
	isOpen = true;
	is_solid = false;
}
else
{
	//but first check if the player is in a doorway
	with(Player_obj)
		if(!place_meeting(x,y,other)) 
		{
			other.isOpen = false;
			other.is_solid = true;
		}
}