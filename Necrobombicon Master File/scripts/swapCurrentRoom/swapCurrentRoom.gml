///@param previous_room
///@param new_room
var previousRoom = argument0;
var newRoom = argument1;

show_debug_message("going from room " +string(previousRoom) + " to " + string(newRoom));

currentBombType = bombTypeData[newRoom];

//Update Dialogue
currentDialogue = roomDialogueData[newRoom];

//Room Modifiers
timedRoom = timedRoomData[newRoom];
if (timedRoom)
	startDOT = true;
maxTime = maxTimeData[newRoom];

bombBag = bombBagData[newRoom];
maxBombs = maxBombsData[newRoom];
currentBombs = maxBombs;

bombMagnet = bombMagnetData[newRoom];

//Lighting
isDisco = disco[newRoom]
currentDarkAlpha = darkAlpha[newRoom]
currentDarkColor = darkColor[newRoom]

//make sure the previous room stays cleared
roomLocksData[previousRoom] = roomLocks;
roomKeysData[previousRoom] = roomKeys; 

//room cleared data
roomLocks = roomLocksData[newRoom];
roomKeys = roomKeysData[newRoom];
roomCleared = roomClearedData[newRoom];
enemys = enemysData[newRoom];

//swap active actors
swapActiveActors();

//handle roomEvents
if(eventControllersData[newRoom] != pointer_null){//set the data
	with(eventControllersData[newRoom]){
		for(var i = dataStart; i<dataEnd; i++)
			roomController.eventFlags[i] = roomController.eventFlagsData[getActorRoom(self), i];
    }
}

if(eventControllersData[previousRoom] != pointer_null){//set the data
	with(eventControllersData[previousRoom]){
		for(var i = dataStart; i<dataEnd; i++)
			roomController.eventFlagsData[getActorRoom(self), i] = roomController.eventFlags[i];
    }
}


//finally switch out the room
currentRoom = newRoom;
setCameraBound(currentRoom);