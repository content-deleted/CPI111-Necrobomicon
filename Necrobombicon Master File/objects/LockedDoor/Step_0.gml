/// @description Insert description here
// You can write your code in this editor
var eventCheck = true;

for(var i = dataStart; i<=dataEnd; i++)
{
	show_debug_message("events"+ string(i) + string(roomController.eventFlagsData[currentRoom,i]));
	show_debug_message("events"+string(i) + string(correctEventFlags[i]));
	if(correctEventFlags[i] != roomController.eventFlagsData[currentRoom,i])
	{
		eventCheck = false; //change the events
	}
}

if(eventCheck)
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
