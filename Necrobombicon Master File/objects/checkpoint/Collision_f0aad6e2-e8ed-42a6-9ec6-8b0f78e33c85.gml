/// @description Insert description here
// You can write your code in this editor
if (Player_obj.healthCurrent > 0)
{
	Player_obj.healthCurrent = Player_obj.healthMax;
	game_save("Save.dat");
	global.saved = true;
	if(singleUse)
		instance_destroy(self);
}