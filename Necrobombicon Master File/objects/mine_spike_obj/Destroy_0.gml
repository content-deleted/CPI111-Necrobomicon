/// @description Spawn debris for the chain
// You can write your code in this editor
event_inherited()
for(var i = 0; i < chainLength; i += chainWidth) {
	sourceX = x + ( cos(chainAngle) * i ) + ( cos(chainAngle) * (chainWidth/2) )
	sourceY = ( y - ( sin( chainAngle ) * i )) + (sin( chainAngle ) * (chainWidth/2) )
	particleEffects(mine_chain_spr, color,x,y,0,0,sprite_width,sprite_height);
}
audio_stop_sound(sfx_chainTug);
playSoundAtSelf(sfx_chainBreak);