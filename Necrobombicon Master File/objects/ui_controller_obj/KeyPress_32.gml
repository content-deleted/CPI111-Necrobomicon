/// @description Insert description here
// You can write your code in this editor
if (global.gamePaused)
{
	switch(menuPos)
	{
		case 1: global.actor_allowUpdate = true; break;
		case 2: if (window_get_fullscreen()) {window_set_fullscreen(false)};
				else {window_set_fullscreen(true);} break;
		case 3: game_end(); break;
	}
	
}