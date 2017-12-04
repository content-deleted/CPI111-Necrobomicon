///@description ESC : pause menu
if(global.actor_allowUpdate) 
{
	//PAUSING
	global.actor_allowUpdate = false
	audio_play_sound(sfx_Pause,2,false)
}
else
{
	//UNPAUSING
	global.actor_allowUpdate = true
	audio_play_sound(sfx_Unpause,2,false)
}

menuPos = 1;
menuNumOfOptions = 2;