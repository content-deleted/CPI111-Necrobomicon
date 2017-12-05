var tHeight = 700;
var tWidth = 1300;
var CameraId = view_camera[0];

//set this in one place so its not confusing for people
//this is the size of the follow border in pixels
var border = 250;
var xB;
var yB;
if(hScroll) xB = border; else xB = 0;
if(vScroll) yB = border; else yB = 0;

var curBottomBound = bottomBound;
var curTopBound =topBound;
var curRightBound =rightBound;
var curLeftBound =leftBound;

//check lerp
if(linearAmount < 1){
	var curBottomBound = lerp(bottomBoundOld,bottomBound,linearAmount);
	var curTopBound = lerp(topBoundOld, topBound, linearAmount);
	var curRightBound = lerp(rightBoundOld, rightBound, linearAmount);
	var curLeftBound = lerp(leftBoundOld, leftBound, linearAmount);
	linearAmount += linearSpeed;
	//testing how this looks you can change it back 
	if(linearAmount >= .99){ global.actor_allowUpdate = true;}
	else{ global.actor_allowUpdate = false; }
}

//check if the camera is out of bounds and move it back if so
if(camera_get_view_y(CameraId) + tHeight > curBottomBound){
	camera_set_view_pos(CameraId,camera_get_view_x(CameraId),curBottomBound-tHeight);
}
if(camera_get_view_y(CameraId) < curTopBound){
	camera_set_view_pos(CameraId,camera_get_view_x(CameraId),curTopBound);
}
if(camera_get_view_x(CameraId) + tWidth > curRightBound){
	camera_set_view_pos(CameraId,curRightBound-tWidth,camera_get_view_y(CameraId));
}
if(camera_get_view_x(CameraId) < curLeftBound){
	camera_set_view_pos(CameraId,curLeftBound,camera_get_view_y(CameraId));
}

//now we set the borders for following the player
//we have to make sure we're not near a bound before hand
if(Player_obj.x -leftBound <= border)
	xB = 0;

if(rightBound - Player_obj.x <= border)
	xB = 0;
	
if(Player_obj.y -topBound <= border)
	yB = 0;

if(bottomBound - Player_obj.y <= border)
	yB = 0;
	
if(linearAmount>=1){//we're not lerpin'
	if(camera_get_view_border_x(CameraId) != xB || camera_get_view_border_y(CameraId) != yB)
		camera_set_view_border(CameraId,xB,yB);
}
else
	camera_set_view_border(CameraId,0,0);
//code for shaking the screen
if(shakescreen){
	camera_set_view_pos(CameraId,sX+irandom_range(-horizontalStrength,horizontalStrength),sY+irandom_range(-verticalStrength,verticalStrength));
	
	//if we have a delerating shake, a bunch of math happens
	if (shakeDecelerating) {
		//0 is start of screenshake, 1 is end of screenshake
		var lerpAmount = (shakeDuration-alarm[1])/shakeDuration
		
		//ease-out
		lerpAmount = sqrt(lerpAmount)
		
		//lerp
		horizontalStrength = lerp(shakeOrigH,0,lerpAmount)
		verticalStrength = lerp(shakeOrigV,0,lerpAmount)
		
		//bound
		horizontalStrength = max(horizontalStrength,0)
		verticalStrength = max(verticalStrength,0)
		
		//debug
		//show_debug_message("horizontal shake strength: " + string(horizontalStrength) + " lerp amount: " + string(lerpAmount))
	}
	
}
else{
	sX = camera_get_view_x(CameraId);
    sY = camera_get_view_y(CameraId);	
}