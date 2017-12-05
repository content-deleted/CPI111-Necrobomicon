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

//Shaders
enableShader = enableShaderData[newRoom];

//make sure the previous room stays cleared
roomLocksData[previousRoom] = roomLocks;
roomKeysData[previousRoom] = roomKeys; 
enemiesCleared = false;

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

setCameraBound(currentRoom,previousRoom);

//here we set the start location of the room
//if you think of a better way to do it change this please
//show_debug_message(Player_obj.xSpeed);
with(Player_obj){
	other.roomEntrenceX = x;
	other.roomEntrenceY = y;
	if(xSpeed != 0 || ySpeed != 0){
		var centerX = (other.rightBound + other.leftBound)/2;
		var centerY = (other.bottomBound + other.topBound)/2;
		var ourDirection  = point_direction(x,y,centerX,centerY);
		show_debug_message(ourDirection)
		if(ourDirection <= 45 && ourDirection>= 315 ){
			other.roomEntrenceX+=150;
		}
		else
		if(ourDirection <= 135 && ourDirection >= 45 ){
			other.roomEntrenceY-=150;
		}
		else
		if(ourDirection <= 225 && ourDirection>= 135 ){
			other.roomEntrenceX-=150;
		}
		else
		if(ourDirection <= 315 && ourDirection>= 225 ){
			other.roomEntrenceY+=150;
		}
	}
}

//show_debug_message("entX:"+string(roomEntrenceX) + "entY:"+string(roomEntrenceY))
//show_debug_message("PlayerX:"+string(Player_obj.x) + "entY:"+string(Player_obj.y))

//let the UI controller we've entered a new room
with (ui_controller_obj) {event_user(0)}
//play the dialogue sound for the room
if (dialogueSound[newRoom] != 0) {audio_play_sound(dialogueSound[newRoom],2,false)}