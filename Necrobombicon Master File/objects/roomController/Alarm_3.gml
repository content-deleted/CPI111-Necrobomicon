/// @description swap actors

with(Actor_Obj){
	//show_debug_message("cur room: "+string(actorRoom));
	if(actorRoom != other.currentRoom){
		show_debug_message(string(self.x)+","+string(self.y));
		instance_deactivate_object(self);
	}
}

