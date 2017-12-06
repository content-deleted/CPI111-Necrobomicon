/// @description interpolate to new lighting
// You can write your code in this editor

var t = room_speed*2
var interpol = sqr((t-alarm[5])/t)

currentDarkAlpha = lerp(currentDarkAlpha,newDarkAlpha,interpol)
show_debug_message(currentDarkAlpha)
currentDarkColor = merge_color(currentDarkColor,newDarkColor,interpol)
show_debug_message(string(currentDarkColor))