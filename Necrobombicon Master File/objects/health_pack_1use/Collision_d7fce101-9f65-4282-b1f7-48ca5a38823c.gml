/// @description Insert description here
// You can write your code in this editor
if (Player_obj.healthCurrent > 0)
{
	Player_obj.healthCurrent += restoreAmount;
	if (Player_obj.healthCurrent > Player_obj.healthMax)
		Player_obj.healthCurrent = Player_obj.healthMax;
	instance_destroy(self);
}