///@param verticalStrength
///@param horizontalStrength
///@param duration
///@param decelerating?

with(roomController){
	//exit if we would be overriding a stronger screenshake
	if (shakescreen && (verticalStrength > argument0 || horizontalStrength > argument1)) {exit}
	
	shakescreen = true
	
	shakeOrigV = argument0
	shakeOrigH = argument1
	verticalStrength = shakeOrigV
	horizontalStrength = shakeOrigH
	
	shakeDuration = argument2
	shakeDecelerating = argument3
	
	alarm[1] = shakeDuration
}