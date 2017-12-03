/// @description Insert description here
// You can write your code in this editor
event_inherited()
newpile.bones = 8
newpile.boneSpeed = 8
newpile.alarm[3] = room_speed * 3 //respawns faster
newpile.creator = Skeleton_red //resurrects as itself

playSoundAtSelf(sfx_skeletonCollapse)