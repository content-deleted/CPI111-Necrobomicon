//creates particle effect using given script
//Format: particleEffects(sprite, color);
//argument0 = sprite;
//argument1 = color;

var spriteID = argument0;
var color = argument1;

//gets sprite dimensions
var width = sprite_get_width(spriteID)
var height = sprite_get_height(spriteID)

//sets size of the produced particles
var particleWidth = irandom_range(width/8,width/4)
var particleHeight = irandom_range(height/8, height/4)

if (!variable_instance_exists(id, "sourceX")) {
	sourceX = x
}
if (!variable_instance_exists(id, "sourceY")) {
	sourceY = y
}
 
for (i=0;(i+particleWidth)<=width;i+=particleWidth) 
{ 
	for (j=0;(j+particleHeight)<=height;j+=particleHeight) 
	{
		particle = instance_create_layer(sourceX+i,sourceY+j,"Particles",particle_Obj)
		particle.xx = i
		particle.yy = j
		particle.spr = spriteID
		particle.ww = particleWidth
		particle.hh = particleHeight
		particle.colour = argument1
		particle.image_speed = 0
		
		//debug
		show_debug_message("i: " + string(i) + " j: " + string(j))
	}
 }
 