/// @description Insert description here
// You can write your code in this editor
if(destroyOnCollide){
	isCollidingX=true;
	isCollidingY=true;
	other.isCollidingY =true;
	other.isCollidingX =true;
}
	
if(isSolid&&canPush) {
	addVector(other,5,point_direction(x,y,other.x,other.y),15,"push");
	addVector(self, 2, point_direction(other.x,other.y,x,y), 2, "push");
}