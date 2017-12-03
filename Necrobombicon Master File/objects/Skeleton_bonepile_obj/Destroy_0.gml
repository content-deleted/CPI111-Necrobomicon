/// @description Insert description here
// You can write your code in this editor
if (healthCurrent <= 0)
{
	var i;
	for (i = 0; i < bones; i++) {
		with(instance_create_layer(x,y,"Instances",bone_projectile_obj)) {
			intendedSpeed = other.boneSpeed;
			intendedDir = (i/other.bones)*360;
			color = other.color
			
		}
	}
	roomController.enemys--;
	particleEffects(skeleton_hurt, color);
	playSoundAtSelf(sfx_skeletonHit)
	playSoundAtSelf(sfx_bonetoss)
}
playSoundAtSelf(sfx_skeletonCollapse)