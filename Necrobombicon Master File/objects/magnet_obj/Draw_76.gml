/// @description Insert description here
// You can write your code in this editor
if(canMove == true && global.actor_allowUpdate){
	xSpeed = round(lengthdir_x(intendedSpeed,intendedDir));
	ySpeed = round(lengthdir_y(intendedSpeed,intendedDir));
}
ActorPosition();
switch(intendedDir)
{
	case 0: sprite_index = spriteArray[anim.move, dir.east]; break;
	case 90: sprite_index = spriteArray[anim.move, dir.north]; break;
	case 180: sprite_index = spriteArray[anim.move, dir.west]; break;
	case 270: sprite_index = spriteArray[anim.move, dir.south]; break;
	default: sprite_index = spriteArray[anim.move, dir.south]; break;
}