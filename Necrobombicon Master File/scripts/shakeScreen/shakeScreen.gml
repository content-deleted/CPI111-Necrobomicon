///@param verticalStrength
///@param horizontalStrength
///@param duration
with(roomController){
	shakescreen = true;
	verticalStrength = argument0;
	horizontalStrength = argument1;

	alarm_set(1,argument2);
}