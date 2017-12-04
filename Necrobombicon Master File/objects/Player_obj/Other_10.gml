/// @description Damage
// You can write your code in this editor
event_inherited()
if (healthCurrent <= 0) {exit}
audio_play_sound(choose(sfx_gjHurt1,sfx_gjHurt2,sfx_gjHurt3),2,false)
shakeScreen(0,30,0.2*room_speed,false)