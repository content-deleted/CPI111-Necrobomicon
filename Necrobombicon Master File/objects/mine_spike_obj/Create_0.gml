/// @description Insert description here
// You can write your code in this editor
event_inherited();
mustDestroy = false;
healthMax = 1;
healthCurrent = healthMax;
damage = 0;

myMine = instance_create_layer(x+100,y,"Instances",mine_obj);
maxDistance = 250;