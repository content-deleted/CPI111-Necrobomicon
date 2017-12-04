/// @description disco lighting (heck yeah)
// You can write your code in this editor

if (isDisco) {
	discoHue = discoHue+50 mod 255
	currentDarkColor = make_color_hsv(round(discoHue),255,40)
}
alarm[2] = room_speed/2