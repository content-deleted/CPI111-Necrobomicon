/// @description Insert description here
// You can write your code in this editor
if (!inWall)
{
	var myExplosion;
	switch (Player_obj.currentSigType)
	{
		case sigType.air: 
			myExplosion = instance_create_layer(x,y, "Explosions", Explosion_Air); break;
		case sigType.freeze:
			myExplosion = instance_create_layer(x,y, "Explosions", Explosion_Freeze); break;
		default: // includes sigType.clear
			myExplosion = instance_create_layer(x,y, "Explosions", Explosion_Basic);
	}
	if(falling)
	{
		myExplosion.image_xscale = .5;
		myExplosion.image_yscale = .5;
		myExplosion.image_alpha = 0.5;
	}
}