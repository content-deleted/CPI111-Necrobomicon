/// @description Insert description here
// You can write your code in this editor
event_inherited()
newpile.bones = 8
newpile.boneSpeed = 8
newpile.alarm[4] = room_speed * 5 //respawns faster
newpile.creator = Skeleton_purple //resurrects as itself

playSoundAtSelf(sfx_skeletonCollapse)