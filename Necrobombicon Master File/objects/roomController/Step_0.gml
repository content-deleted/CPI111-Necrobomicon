/// @description check room of player and swap
var playerRoom = getActorRoom(Player_obj);

if(currentRoom != playerRoom)
	swapCurrentRoom(currentRoom,playerRoom);
	
updateRoomMods();

if(roomLocks <= roomKeys)
	roomCleared=true;
else
	roomCleared = false;

if(enemys = 0 && enemysData[currentRoom] > 0){roomKeys++}

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
	alarm[0] = 3 * room_speed;
}

updateCamera();