isCollidingX = false;
isCollidingY = false;
if(isSolid)
{
	//check x collision
	if(xSpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileCollision(self,xSpeed,0) || place_meeting(x+xSpeed,y,Obj_Solid)){
			xSpeed = 0;
			isCollidingX = true;
		}
	//check y collision
	if(ySpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileCollision(self,0,ySpeed) || place_meeting(x,y+ySpeed,Obj_Solid)){
			isCollidingY = true;
			ySpeed = 0;
		}
	if(xSpeed != 0 && ySpeed !=0){
		if(checkTileCollision(self,xSpeed,ySpeed) || place_meeting(x+xSpeed,y+ySpeed,Obj_Solid)){
			xSpeed = 0;
			ySpeed = 0;
			isCollidingX = true;
			isCollidingY = true;
		}
	}
	
	if(isCollidingX) {event_user(1)}
	if(isCollidingY) {event_user(2)}
}