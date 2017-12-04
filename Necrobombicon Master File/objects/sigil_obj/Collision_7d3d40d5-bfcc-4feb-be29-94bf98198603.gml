/// @description Insert description here
// You can write your code in this editor
if (Player_obj.currentSigType != thisSigType) {
	if (thisSigType == sigType.clear) {
		audio_play_sound(sfx_gjNo,1,false)
	} else {
		audio_play_sound(sfx_gjHappy1,1,false)
	}
}
Player_obj.currentSigType = thisSigType;