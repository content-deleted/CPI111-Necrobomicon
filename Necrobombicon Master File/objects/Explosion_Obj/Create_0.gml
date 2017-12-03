/// @description lever flip

with(Lever){
	if(distance_to_object(other)<=0){
		if(flipped){
			sprite_index = InactiveLever
			roomController.eventFlags[eventNumber] = false;
		}
		else{
			sprite_index = ActiveLever;
			roomController.eventFlags[eventNumber] = true;
		}
		flipped = !flipped;
	}
}
