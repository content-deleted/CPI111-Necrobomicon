///@description ESC : pause menu
if(!global.gamePaused) 
{
	//PAUSING
	global.actor_allowUpdate = false
	global.gamePaused = true;
	audio_play_sound(sfx_Pause,2,false)
}
else
{
	//UNPAUSING
	global.actor_allowUpdate = true
	global.gamePaused = false;
	audio_play_sound(sfx_Unpause,2,false)
}

menuPos = 1;
menuNumOfOptions = 3;