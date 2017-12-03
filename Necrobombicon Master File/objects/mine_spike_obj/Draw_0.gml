/// @description Insert description here
// You can write your code in this editor
draw_self();
if (instance_exists(myMine))
{
	// This chain will be cast/drawn from object1! 
	xDist = x - myMine.x; //Get X distance between both objects 
	yDist = y - myMine.y; //Get Y distance between both objects
	chainWidth = sprite_get_width(mine_chain_spr); //Your chain sprite here
	chainLength = abs(sqrt( sqr(xDist) + sqr(yDist) )); //Get the length of the entire chain.
	chainAngle = degtorad(point_direction(x, y, myMine.x, myMine.y)); //get the angle of the chain and convert it from degrees to radians

	for(var i = 0; i < chainLength; i += chainWidth) //Run a loop so we draw every chain-segment
	{
	     // This is the big one. We draw the chain segment at the proper rotated angle, with an x-coordinate multiplied by cos(chainAngle), and a y-coordinate multiplied by sin(chainAngle).
	    // They're both multiplied by cos/sin so the chain-segments each appear at the correct x/y coordinates, given by the angle of the chain.
	   draw_sprite_ext(mine_chain_spr, 0, x + ( cos(chainAngle) * i ) + ( cos(chainAngle) * (chainWidth/2) ), (y - ( sin( chainAngle ) * i )) + (sin( chainAngle ) * (chainWidth/2) ), 1, 1, radtodeg(chainAngle), c_white, 1);
	}
}