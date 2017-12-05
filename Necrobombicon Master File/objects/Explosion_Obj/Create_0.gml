/// @description lever flip

with(Lever){
	if(distance_to_object(other)<=0){
		if(flipped){
			sprite_index = InactiveLever
			if(seperateRoomControl)
				roomController.eventFlagsData[otherRoom,eventNumber] = false;
			else
				roomController.eventFlags[eventNumber] = false;
		}
		else{
			sprite_index = ActiveLever;
			if(seperateRoomControl)
				roomController.eventFlagsData[otherRoom,eventNumber] = true;
			else
				roomController.eventFlags[eventNumber] = true;
		}
		flipped = !flipped;
	}
}

