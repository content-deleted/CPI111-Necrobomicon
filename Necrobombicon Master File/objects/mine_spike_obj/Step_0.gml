/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (instance_exists(myMine))
{
	var mineDis = min(point_distance(x, y, myMine.x, myMine.y), maxDistance);
	var mineDir = point_direction(x, y, myMine.x, myMine.y);
	myMine.x = x + lengthdir_x(mineDis, mineDir);
	myMine.y = y + lengthdir_y(mineDis, mineDir);
}
else
	instance_destroy()