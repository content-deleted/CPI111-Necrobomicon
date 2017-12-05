/// @description check room of player and swap
var playerRoom = getActorRoom(Player_obj);

if(currentRoom != playerRoom)
	swapCurrentRoom(currentRoom,playerRoom);
	
updateRoomMods();
if(roomLocks <= roomKeys)
	roomCleared=true;
else
	roomCleared = false;

if(!enemiesCleared)
{
	if(enemys <= 0)
	{
		enemiesCleared = true;
		roomKeys++;
	}
}

if(startDOT)
{
	alarm[4] = room_speed * maxTime;
	startDOT = false;
}

// death
if (Player_obj.healthCurrent <= 0 && playing)
{
	playing = false;
	Player_obj.positionUpdate = false;
	Player_obj.canMove = false;
	Player_obj.image_blend = c_dkgray;
	alarm[0] = 3 * room_speed;
	audio_play_sound(choose(sfx_gjDeath1,sfx_gjDeath2,sfx_gjDeath3),2,false);
}

updateCamera();
//shaders
shaderTime += 0.01
if ( shaderTime >= 65000 ) shaderTime = 0

//Shader Settings
//Switches shader on/off based on current room
//Set rooms where you would late the shader to be present

if(enableShader){
	application_surface_draw_enable(false);
}
else{
	application_surface_draw_enable(true);
}
