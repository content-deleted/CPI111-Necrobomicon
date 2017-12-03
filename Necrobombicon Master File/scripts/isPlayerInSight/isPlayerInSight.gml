///@param visionRadius
///@param visionAngle

visionRadius = argument0
visionAngle = argument1
return (distance_to_object(Player_obj)<visionRadius && abs(intendedDir-point_direction(x,y,Player_obj.x,Player_obj.y))<visionAngle)