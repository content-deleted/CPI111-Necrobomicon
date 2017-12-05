///@description This script sets tiles to empty in a range IN TILES NOT PIXELS around the point
///@param x
///@param y
///@param range

var xDestroy = argument0;
var yDestroy = argument1;
var range = argument2;
var tMap =layer_tilemap_get_id("DestructableTiles");
var emptyTile = tile_set_empty(tilemap_get_at_pixel(tMap, xDestroy,yDestroy));

var cellX = tilemap_get_cell_x_at_pixel(tMap,xDestroy,yDestroy);
var cellY = tilemap_get_cell_y_at_pixel(tMap,xDestroy,yDestroy);

for(var i = cellY - range; i<= cellY+range; i++){
	for(var j = cellX - range; j<= cellX+range; j++){
		show_debug_message("x"+string(j)+" y:"+string(i))
		tilemap_set(tMap,emptyTile,j,i);
	}
}