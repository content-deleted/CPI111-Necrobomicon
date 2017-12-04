//creates particle effect using given script
//Format: particleEffects(sprite, color);
//argument0 = sprite;
//argument1 = color;

var spriteID = argument0;
var color = argument1;

//gets script dimensions
var width = sprite_get_width(spriteID);
var height = sprite_get_height(spriteID);

//sets size of the produced particles. 
var particle_Size = irandom_range(width/8,width/4);

 
for (i=0;i<width;i+=particle_Size) 
{ 
	for (j=0;j<height;j+=particle_Size) 
	{
		particle = instance_create_layer(x+i,y+j,"Particles",particle_Obj);
		particle.xx = i; 
		particle.yy = j;
		particle.spr = spriteID; 
		particle.size = particle_Size;
		particle.colour = argument1;
		particle.image_speed = 0;
		
	}
 }
 