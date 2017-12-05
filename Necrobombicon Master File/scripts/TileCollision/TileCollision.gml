isCollidingX = false;
isCollidingY = false;
if(isSolid)
{
	//check x collision
	if(xSpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileCollision(self,xSpeed,0)){
			xSpeed = 0;
			isCollidingX = true;
		}
		var solidObj = instance_place(x+xSpeed,y,Obj_Solid);
		if(instance_exists(solidObj)){
			if(solidObj.is_solid){
				xSpeed = 0;
				isCollidingX = true;
			}
		}
	//check y collision
	if(ySpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileCollision(self,0,ySpeed)){
			isCollidingY = true;
			ySpeed = 0;
		}
		var solidObj = instance_place(x,y+ySpeed,Obj_Solid);
		if(instance_exists(solidObj)){
			if(solidObj.is_solid){
				isCollidingY = true;
				ySpeed = 0;
			}
		}
	if(xSpeed != 0 && ySpeed !=0){
		if(checkTileCollision(self,xSpeed,ySpeed)){
			xSpeed = 0;
			ySpeed = 0;
			isCollidingX = true;
			isCollidingY = true;
		}
		var solidObj = instance_place(x+xSpeed,y+ySpeed,Obj_Solid);
		if(instance_exists(solidObj)){
			if(solidObj.is_solid){
				xSpeed = 0;
				ySpeed = 0;
				isCollidingX = true;
				isCollidingY = true;
			}
		}
	}
	
	if(isCollidingX) {event_user(1)}
	if(isCollidingY) {event_user(2)}
}