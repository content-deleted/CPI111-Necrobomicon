/// @description Enemy Hits Player

// Add knockback vector to player
addVector(Player_obj,30,point_direction(x,y,Player_obj.x,Player_obj.y),3,"knockback");
// Subtract health from player
Player_obj.healthCurrent-=damage;