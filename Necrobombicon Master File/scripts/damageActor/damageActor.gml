///@param actor to damage
///@param damage to deal
///@param knockbackBool
///@param knockbackMagnitude
///@param knockbackDirection
///@param knockbackTime
///@param knockbackId

var actor =argument0;
var damageDealt = argument1;
var knockback = argument2;
var kMagnitude = argument3;
var kDirection = argument4;
var kTime = argument5;

if (!actor.isInvincible)
{
	// Subtract health
	actor.healthCurrent-= damageDealt;
	actor.isInvincible = true;
	actor.alarm[1] = 1*room_speed; //set the invincibility timer
	actor.image_index = 0;
	// Add knockback vector 
	if(knockback)
		addVector(actor,kMagnitude,kDirection,kTime,"knockback");
		
	with(actor) {event_user(0)} //damage event
}

