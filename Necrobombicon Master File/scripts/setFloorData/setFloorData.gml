///@params floor_number
//here we reset the arrays
bombTypeData = 0;

timedRoomData = 0;
maxTimeData = 0; // controls speed of player's health loss. 1 means 1 hp per 1 second, 2 means 1 hp per 2 seconds
bombBagData = 0;
maxBombsData = 0;
bombMagnetData = 0;
darknessLevelData = .4;
isDarknessLevelData = 0;

roomClearedData = 0;
roomLocksData = 0;
roomKeysData = 0;
enemysData = 0;
fightData = 0;
roomDialogueData = 0;

var roomNum = 0; 
switch(global.floorNum)
{
case 0: //this is our default case, its just menus and stuff
	//we set these to make sure its an array
break; 

case 1://this is the first floor of the game
	/////////////////////////////////////////////////////
	//room 1 start
	roomNum = 1; 
	roomDialogueData[roomNum] = "HELLO WORLD!";
	
	bombTypeData[roomNum] = bombType.remote;
	setRoomLocks(roomNum);
	
	setDefaultMods(roomNum);
	/////////////////////////////////////////////////////
	//room2 start
	roomNum = 2; 
	roomDialogueData[roomNum] = "HELLO AGAIN!";

	bombTypeData[roomNum] = bombType.bounce;
	setRoomLocks(roomNum);

	setDefaultMods(roomNum);
	timedRoomData[roomNum] = true;
	maxTimeData[roomNum] = 1.2;
	/////////////////////////////////////////////////////
	//room 3 start
	roomNum = 3; 
	roomDialogueData[roomNum] = "This room is a tall boi";
	
	roomDialogueData[roomNum] = "HELLO AGAIN!";
	bombTypeData[roomNum] = bombType.rocket;
	setRoomLocks(roomNum);
	
	setDefaultMods(roomNum);
	bombBagData[roomNum] = true;
	maxBombsData[roomNum] = 5;
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	//room 4 start
	roomNum = 4; 
	roomDialogueData[roomNum] = "this room is a test";
	
	roomDialogueData[roomNum] = "HELLO AGAIN!";
	bombTypeData[roomNum] = bombType.fuse;
	setRoomLocks(roomNum);
	
	setDefaultMods(roomNum);
	darknessLevelData[roomNum] = .9;
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	//room 5 start
	roomNum = 5; 
	roomDialogueData[roomNum] = "this room is a wide boi";
	
	bombTypeData[roomNum] = bombType.base;
	setRoomLocks(roomNum);
	
	setDefaultMods(roomNum);
	/////////////////////////////////////////////////////
	rooms = 5;//here we set the total number of rooms on the floor
break;


}
//get information about actors in rooms

with(Enemy_Obj){
	if(mustDestroy)
		roomController.enemysData[actorRoom]++;
}
var i;
for(i = 1; i<=rooms; i++;){
	if(fightData[i] && enemysData[i]>0) roomLocksData[i]++;
}


//handle roomEvents
//for(var i = 0; i<100; i++){
	eventFlagsData[0,0] = 0;//set the data
//}
eventFlags[0] = false;
for(var i = 0; i<=rooms; i++;)
	eventControllersData[i] = 0;
	
with(RoomEventController){
	var eventRoom = getActorRoom(self);
    for(var i = dataStart; i<dataEnd; i++){
		other.eventFlagsData[eventRoom, i] = false;
	    other.eventFlags[i] = false;
	}
	other.eventControllersData[eventRoom] = self;
	other.roomLocksData[eventRoom]++;
}
