/// @description Fallen Event
//this is only an event so that it can be overridden by certain things
//right now thats just the player

//this gets called when the actor has fallen down a pit tile
healthCurrent = 0;
instance_destroy(self);