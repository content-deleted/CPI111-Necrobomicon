///@params floor_number
//here we reset the arrays
bombTypeData = 0;
timedRoomData = 0;
maxTimeData = 0; // controls speed of player's health loss. 1 means 1 hp per 1 second, 2 means 1 hp per 2 seconds
bombBagData = 0;
maxBombsData = 0;
bombMagnetData = 0;
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
	rooms = 15 //here we set the total number of rooms on the floor
	var i;
	for(i=1;i<rooms+1;i++) {setDefaultData(i)}
	/////////////////////////////////////////////////////
	//room 1 start
	roomNum = 1; 
	roomDialogueData[roomNum] = "HELLO WORLD!";
	bombTypeData[roomNum] = bombType.remote;
	
	darkAlpha[roomNum] = 0.7
	disco[roomNum] = true
	/////////////////////////////////////////////////////
	//room2 start
	roomNum = 2; 
	roomDialogueData[roomNum] = "HELLO AGAIN!";
	bombTypeData[roomNum] = bombType.bounce;
	
	timedRoomData[roomNum] = true;
	maxTimeData[roomNum] = 1.2;
	/////////////////////////////////////////////////////
	//room 3 start
	roomNum = 3; 
	roomDialogueData[roomNum] = "This room is a tall boi";
	bombTypeData[roomNum] = bombType.rocket;
	
	bombBagData[roomNum] = true;
	maxBombsData[roomNum] = 5;
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	//room 4 start
	roomNum = 4; 
	roomDialogueData[roomNum] = "this room is a test";
	bombTypeData[roomNum] = bombType.fuse;
	
	darkAlpha[roomNum] = .97;
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	//room 5 start
	roomNum = 5; 
	roomDialogueData[roomNum] = "this room is a wide boi";
	bombTypeData[roomNum] = bombType.base;
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	//room 6 start
	roomNum = 6; 
	roomDialogueData[roomNum] = "Test test test test test test test test test test test test test test test test test test.";
	bombTypeData[roomNum] = bombType.remote;
	darkAlpha[roomNum] = .6
	darkColor[roomNum] = make_color_rgb(40,35,30)
	dialogueSound[roomNum] = sfx_dialogue1
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 8
	roomDialogueData[roomNum] = "WELCOME, JONES, TO MY PRIVATE LOUNGE% (AND ETERNAL PRISON).%%|I CHOSE THE DECOR MYSELF! IT'S QUITE LOVELY, AS YOU CAN SEE...%|BUT IT'S MISSING A LITTLE SOMETHING.%%% IT'S MISSING...EXPLOSIONS.%%%%%|"
	bombTypeData[roomNum] = bombType.base;
	darkColor[roomNum] = make_color_rgb(40,30,20)
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 9
	roomDialogueData[roomNum] = "shadow room";
	bombTypeData[roomNum] = bombType.base;
	
	darkAlpha[roomNum] = .7
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 11; 
	roomDialogueData[roomNum] = "HELLO WORLD!";
	bombTypeData[roomNum] = bombType.base;
	
	darkAlpha[roomNum] = 0.7
	disco[roomNum] = true
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 12; 
	roomDialogueData[roomNum] = "HMPH, THERE'S NO WAY TO CROSS THAT GAP! I GUESS IT'S 'GAME OVER'...";
	bombTypeData[roomNum] = bombType.remote;
	darkAlpha[roomNum] = .6
	darkColor[roomNum] = make_color_rgb(30,0,50)
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 13; 
	roomDialogueData[roomNum] = "chain chomp room";
	bombTypeData[roomNum] = bombType.bounce;
	darkAlpha[roomNum] = .4
	darkColor[roomNum] = make_color_rgb(30,10,0)
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	
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
    for(var i = dataStart; i<=dataEnd; i++){
		other.eventFlagsData[eventRoom, i] = false;
	    other.eventFlags[i] = false;
	}
	other.eventControllersData[eventRoom] = self;
	other.roomLocksData[eventRoom]++;
}

with(LockedDoor){
	var eventRoom = getActorRoom(self);
    for(var i = dataStart; i<=dataEnd; i++){
		other.eventFlagsData[eventRoom, i] = false;
	    other.eventFlags[i] = false;
	}
}
