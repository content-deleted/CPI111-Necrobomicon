/// @description Insert description here
// You can write your code in this editor
TileCollision();
if(isCollidingX || isCollidingY)
{
	intendedDir += 90;
	intendedSpeed = maxSpeed;
	if(isCollidingX & isCollidingY)
		intendedDir -= 90;
	if(intendedDir >= 360)
		intendedDir -= 360;
	if(intendedDir < 0)
		intendedDir += 360;
}