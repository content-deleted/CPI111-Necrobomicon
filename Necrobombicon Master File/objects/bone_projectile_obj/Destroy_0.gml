/// @description Insert description here
// You can write your code in this editor
event_inherited()
playSoundAtSelf(sfx_bonebreak)
audio_sound_pitch(sfx_bonebreak, random_range(0.5,1.5))
particleEffects(bone_spr,color,x,y,0,0,sprite_width,sprite_height)