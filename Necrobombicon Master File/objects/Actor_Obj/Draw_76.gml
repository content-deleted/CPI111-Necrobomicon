/// @description Insert description here
// You can write your code in this editor
ActorAnimation();
ActorPosition();

image_blend = color //Use instance variable color
if(isInvincible) {
	image_blend = (color=c_red) ? c_orange : c_red //Override for damage
} else if(alarm[3]>0) {
	image_blend = c_blue //Override for freezing
}