/// @description Insert description here
// You can write your code in this editor
if (healthCurrent <= 0)
{
	var i;
	for (i = 0; i < bones; i++) {
		with(instance_create_layer(x,y,"Instances",bone_projectile_obj)) {
			intendedSpeed = other.boneSpeed;
			intendedDir = (i/other.bones)*360;
		}
	}
	roomController.enemys--;
}
/*
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 0;
}
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 90;
}
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 180;
}
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 270;
}