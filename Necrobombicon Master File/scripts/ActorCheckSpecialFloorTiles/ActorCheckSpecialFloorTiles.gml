//checks if the actor is on top of a special tile
//if they are we preform the correct action
var tilemap = layer_tilemap_get_id("SpecialFloorTiles");
var tile = tilemap_get_at_pixel(tilemap,x,y);
if(tile!= 0){
	//this is the threshold for velocity not to fall
	var threshold = 10;
	if(tile <= floorTileId.pit){//tiles 1 to 13 are pits
		if(sqrt(power(xSpeed,2) + power(ySpeed,2)) < threshold){
			//actor is falling
			falling = true;
		}
	}
}

if(falling){
	if(image_xscale > 0){
			intendedDir = 270;
			canMove = false;
			xSpeed = xSpeed/1.1;
			ySpeed = ySpeed/1.1;
			image_xscale -= 0.015;
			image_yscale = image_xscale;
			image_angle += 1;
			if(image_alpha>0) image_alpha -= 0.015;
	}
	//actor has fallen
	else
		event_user(4);
}