//creates particle effect using given script
//Format: particleEffects(sprite, color);
///@param sprite
///@param color
///@param x
///@param y
///@param xStartSample
///@param yStartSample
///@param sampleW
///@param sampleH

var spriteID = argument0;
var color = argument1;
var spawnX = argument2;
var spawnY = argument3;
var xStartSample = argument4;
var yStartSample = argument5;
var sampleW = argument6;
var sampleH = argument7;

//gets sprite dimensions
//var width = sprite_get_width(spriteID)
//var height = sprite_get_height(spriteID)

//sets size of the produced particles
var particleWidth = irandom_range(sampleW/8,sampleW/5)
var particleHeight = irandom_range(sampleH/8, sampleH/5)

//draw_sprite_part_ext(spr,-1,xx,yy,ww,hh,x,y,1,1,colour,1);
 
for (i=xStartSample;(i+particleWidth)<=(sampleW+xStartSample);i+=particleWidth) 
{ 
	for (j=yStartSample;(j+particleHeight)<=(sampleH+yStartSample);j+=particleHeight) 
	{
		particle = instance_create_layer(spawnX,spawnY,"Particles",particle_Obj)
		particle.xx = i
		particle.yy = j
		particle.spr = spriteID
		particle.ww = particleWidth
		particle.hh = particleHeight
		particle.colour = argument1
		particle.image_speed = 0
		
		//debug
		//show_debug_message("i: " + string(i) + " j: " + string(j))
	}
 }
 