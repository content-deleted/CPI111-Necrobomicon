//this needs to be cleaned up and reogranized to be more robust
if(global.actor_allowUpdate)
{
	if ((intendedDir >= 337.5) || (intendedDir <= 22.5))
		currentDirection = dir.east;
	else if ((intendedDir > 22.5) && (intendedDir < 67.5))
		currentDirection = dir.northeast;
	else if ((intendedDir >= 67.5) && (intendedDir <= 112.5))
		currentDirection = dir.north;
	else if ((intendedDir > 112.5) && (intendedDir < 157.5))
		currentDirection = dir.northwest;
	else if ((intendedDir >= 157.5) && (intendedDir <= 202.5))
		currentDirection = dir.west;
	else if ((intendedDir > 202.5) && (intendedDir < 247.5))
		currentDirection = dir.southwest;
	else if ((intendedDir >= 247.5) && (intendedDir <= 292.5))
		currentDirection = dir.south;
	else if ((intendedDir > 292.5) && (intendedDir < 337.5))
		currentDirection = dir.southeast;
	
	// animation end event
	if (image_index >= (image_number))
	{
		//isInvincible = false;
		attacking = false;
	}
	
	/*if(isInvincible)
	{
		if (spriteArray[anim.hurt, currentDirection] != undefined)
			sprite_index = spriteArray[anim.hurt, currentDirection];
		image_blend = c_red;
	}*/
	else if(attacking)
	{
		if (spriteArray[anim.hit, currentDirection] != undefined)
			sprite_index = spriteArray[anim.hit, currentDirection];
	}
	//handle movement animation
	else if(intendedSpeed != 0)
	{
		if (spriteArray[anim.move, currentDirection] != undefined)
			sprite_index = spriteArray[anim.move, currentDirection];
	}
	else
	//handles idle animations
	//if(intendedSpeed == 0)
	{	
		if (spriteArray[anim.idle, currentDirection] != undefined)
			sprite_index = spriteArray[anim.idle, currentDirection];
	}
	
	if (healthCurrent <= 0)
	{
		if (spriteArray[anim.hurt,0] != undefined)
			sprite_index = spriteArray[anim.hurt, 0];
	}
}/*
else
if(!global.gamePaused) {
	if ((intendedDir >= 337.5) || (intendedDir <= 22.5))
		currentDirection = dir.east;
	else if ((intendedDir > 22.5) && (intendedDir < 67.5))
		currentDirection = dir.northeast;
	else if ((intendedDir >= 67.5) && (intendedDir <= 112.5))
		currentDirection = dir.north;
	else if ((intendedDir > 112.5) && (intendedDir < 157.5))
		currentDirection = dir.northwest;
	else if ((intendedDir >= 157.5) && (intendedDir <= 202.5))
		currentDirection = dir.west;
	else if ((intendedDir > 202.5) && (intendedDir < 247.5))
		currentDirection = dir.southwest;
	else if ((intendedDir >= 247.5) && (intendedDir <= 292.5))
		currentDirection = dir.south;
	else if ((intendedDir > 292.5) && (intendedDir < 337.5))
		currentDirection = dir.southeast;
		
	if (spriteArray[anim.idle, currentDirection] != undefined)
			sprite_index = spriteArray[anim.idle, currentDirection];
}*/