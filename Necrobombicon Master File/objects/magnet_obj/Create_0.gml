/// @description Insert description here
// You can write your code in this editor
event_inherited();
maxRange = 200;
maxSpeed = 3;
intendedSpeed = maxSpeed;
intendedDir = 0;

isCollidingX = false;
isCollidingY = false;

xSpeed = 0;
ySpeed = 0;
canMove = true;
isSolid = true;
positionUpdate = true;

spriteArray[anim.move, dir.north] = magnet_back;
spriteArray[anim.move, dir.northeast] = magnet_back;
spriteArray[anim.move, dir.northwest] = magnet_back;
spriteArray[anim.move, dir.south] = magnet_front;
spriteArray[anim.move, dir.southeast] = magnet_front;
spriteArray[anim.move, dir.southwest] = magnet_front;
spriteArray[anim.move, dir.east] = magnet_right;
spriteArray[anim.move, dir.west] = magnet_left;
