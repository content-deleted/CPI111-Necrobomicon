/// @description timed room DoT
if(timedRoom)
{
	Player_obj.healthCurrent-=0.1;
	alarm[4] = room_speed * maxTime;
}