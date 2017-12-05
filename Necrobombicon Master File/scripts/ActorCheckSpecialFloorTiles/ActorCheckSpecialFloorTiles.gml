//checks if the actor is on top of a special tile
//if they are we preform the correct action
var tilemap = layer_tilemap_get_id("SpecialFloorTiles");
var tile = tilemap_get_at_pixel(tilemap,x,y);
if(tile!= 0){
	//this is the threshold for velocity not to fall
	var threshold = 8;
	if((tile <= floorTileId.pit) & canFall){//tiles 1 to 13 are pits
		if(sqrt(power(xSpeed,2) + power(ySpeed,2)) < threshold){
			//actor is falling
			falling = true;
		}
	}
}

if(falling){
		if (image_xscale == 1){
			if(object_index = Player_obj || object_index = goblin_obj)
				audio_play_sound(choose(sfx_gjFallDeath1,sfx_gjFallDeath2,sfx_gjFallDeath3),2,false);
		}
		if(image_xscale > 0){
				intendedDir = 270;
				canMove = false;
				xSpeed = xSpeed/1.1;
				ySpeed = ySpeed/1.1;
				image_xscale -= 0.015;
				image_yscale = image_xscale;
				image_angle += 1;
				if(image_alpha>0) image_alpha -= 0.015;
				if(tile==0)
				{
					xSpeed= -xSpeed;
					ySpeed= -ySpeed;
				}
		}
		//actor has fallen
		else
			event_user(4);
}