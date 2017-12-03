//checks if the actor is on top of a special tile
//if they are we preform the correct action
var tilemap = layer_tilemap_get_id("SpecialFloorTiles");
var tile = tilemap_get_at_pixel(tilemap,x,y);
if(tile!= 0){
	switch(tile){
		case(floorTileId.spikes):
			//damage the actor
			
		case(floorTileId.pit):
		
		case(floorTileId.ice):
	}
}
