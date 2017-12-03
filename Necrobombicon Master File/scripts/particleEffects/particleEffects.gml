var objectID = argument0;
var color = argument1;
var width = sprite_get_width(objectID);
var height = sprite_get_height(objectID);

var particle_Size = irandom_range(15,25);

for (i=0;i<width;i+=particle_Size) 
{ 
	for (j=0;j<height;j+=particle_Size) 
	{
		particle = instance_create_layer(x+i,y+j,"Particles",particle_Obj);
		particle.xx = i; 
		particle.yy = j;
		particle.spr = objectID; 
		particle.size = particle_Size;
		particle.colour = c_red;
		particle.image_speed = 0;
		
	}
 }
 