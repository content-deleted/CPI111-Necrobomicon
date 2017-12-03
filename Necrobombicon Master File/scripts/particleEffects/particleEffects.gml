objectID = argument0;


width = sprite_get_width(objectID);
height = sprite_get_height(objectID);

particle_Size = irandom_range(15,20);

for (i=0;i<width;i+=particle_Size) 
{ 
	for (j=0;j<height;j+=particle_Size) 
	{
		particle = instance_create_layer(x+i,y+j,"Instances",particle_Obj);
		particle.xx = i; 
		particle.yy = j;
		particle.spr = objectID; 
		particle.size = particle_Size;
		
	}
 }
 