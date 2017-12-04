/// @description Set position
// You can write your code in this editor
time++
//if (time > frequency*room_speed) {time=0}
var angle = 2*pi*(time/(frequency*room_speed))
x = originx + radius*cos(angle)
y = originy + radius*sin(angle)

alpha = baseAlpha+magnitudeAlpha*sin(2*pi*(time/((frequency*2)*room_speed)))

//show_debug_message(string(angle))