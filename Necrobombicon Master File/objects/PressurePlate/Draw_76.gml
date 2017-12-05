/// @description Insert description here
// You can write your code in this editor
if(checkPressure){
	checkPressure = false;
	if(activated){
		sprite_index = PlateDown_spr;
		if(seperateRoomControl)
			roomController.eventFlagsData[otherRoom,eventNumber] = true;
		else
			roomController.eventFlags[eventNumber] = true;	
	}
	else{
		sprite_index = PlateUp_spr;
		if(seperateRoomControl)
			roomController.eventFlagsData[otherRoom,eventNumber] = false;
		else
			roomController.eventFlags[eventNumber] = false;	
	}
}