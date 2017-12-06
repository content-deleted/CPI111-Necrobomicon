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
	roomDialogueData[roomNum] = "THANKS FOR PLAYING OUR DEMO!";
	bombTypeData[roomNum] = bombType.remote;
	
	darkAlpha[roomNum] = 0.2
	disco[roomNum] = true
	/////////////////////////////////////////////////////
	//room2 start
	roomNum = 2; 
	roomDialogueData[roomNum] = "THIS IS IT.% THE FINAL ROOM.% YOU KNOW WHAT TO DO...%%|DESTROY THEM ALL!!!%%%|"
	dialogueSound[roomNum] = sfx_dialogue3
	bombTypeData[roomNum] = bombType.rocket;
	
	darkAlpha[roomNum] = .7
	darkColor[roomNum] = make_color_rgb(100,20,0)
	
	timedRoomData[roomNum] = true;
	maxTimeData[roomNum] = 30;
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
	roomDialogueData[roomNum] = "WOW, THIS ROOM IS SCARY!%%% GOOD THING I'M NOT PLAYING...%%%%|BY THE WAY, THE FINAL ROOM OF THE DEMO IS JUST AHEAD...%%|I HOPE YOU'RE READY!%%%|";
	dialogueSound[roomNum] = sfx_dialogue1
	bombTypeData[roomNum] = bombType.bounce;
	darkAlpha[roomNum] = .5
	darkColor[roomNum] = make_color_rgb(40,0,60)
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	//room 6 start
	roomNum = 6; 
	roomDialogueData[roomNum] = "THIS IS THE BEGINNING OF THE TECH DEMO!%%%%%%|[THE 'DEMO' IS SHORT FOR DEMOLITION.]%%%|I'M THE NECROBOMBICON. I JUST TURNED YOU INTO A GOBLIN.%%|I'M GONNA CALL YOU 'GOBLIN JONES.' YOU FINE WITH THAT, GOBLIN JONES?%%|PRESS THE [DOWN] KEY TO TELL ME YOU'RE FINE WITH IT."
	bombTypeData[roomNum] = bombType.remote;
	darkAlpha[roomNum] = .7
	darkColor[roomNum] = make_color_rgb(30,35,40)
	dialogueSound[roomNum] = sfx_dialogue5
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 7
	roomDialogueData[roomNum] = "GOOD JOB PRESSING THE DOWN KEY, JONES. I KNEW I COULD COUNT ON YOU.%%%|I FEEL LIKE WE'RE ALREADY BECOMING FRIENDS.%%|PERHAPS IT'S TIME I INVITE YOU INTO MY HOME...%%%|"
	dialogueSound[roomNum] = sfx_dialogue1
	darkAlpha[roomNum] = .7
	darkColor[roomNum] = make_color_rgb(40,35,30)
	bombTypeData[roomNum] = bombType.base
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 8
	roomDialogueData[roomNum] = "WELCOME, JONES, TO MY PRIVATE LOUNGE% (AND ETERNAL PRISON).%%|I CHOSE THE DECOR MYSELF! IT'S QUITE LOVELY, AS YOU CAN SEE...%|BUT IT'S MISSING A LITTLE SOMETHING.%%% IT'S MISSING...EXPLOSIONS.%%%%%|PRESS [SPACE] TO THROW A BOMB. YOU KNOW YOU WANT TO.%%|"
	dialogueSound[roomNum] = sfx_dialogue4
	bombTypeData[roomNum] = bombType.base;
	darkAlpha[roomNum] = 0.2
	darkColor[roomNum] = make_color_rgb(50,40,20)
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 9
	roomDialogueData[roomNum] = "YOU'RE NOT THE FIRST EXPLORER TO COME THIS WAY.%%|BEHOLD THE FATE OF THOSE WHO FAIL TO ESCAPE!%%%|";
	dialogueSound[roomNum] = sfx_dialogue4
	bombTypeData[roomNum] = bombType.base;
	
	darkAlpha[roomNum] = .7
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 10
	roomDialogueData[roomNum] = "THINK FAST!%%%|%%%%HEY, YOU DID IT. NICE.|"
	bombTypeData[roomNum] = bombType.remote
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 11; 
	roomDialogueData[roomNum] = "HERE AT MY LOUNGE, DISCO ISN'T DEAD...%%%|%IT'S UNDEAD! %%HA HA!!! I'M HILARIOUS.%%%|ANYWAY. SHOW THOSE SKELETONS YOUR 'KILLER MOVES'...%%|(THAT MEANS KILL THEM.)%%%|";
	dialogueSound[roomNum] = sfx_dialogue2
	bombTypeData[roomNum] = bombType.base;
	
	darkAlpha[roomNum] = 0.6
	disco[roomNum] = true
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 12; 
	roomDialogueData[roomNum] = "HMPH, THERE'S NO WAY TO CROSS THAT GAP! I GUESS IT'S 'GAME OVER'...%%|";
	dialogueSound[roomNum] = sfx_dialogue6
	bombTypeData[roomNum] = bombType.remote;
	darkAlpha[roomNum] = .7
	darkColor[roomNum] = make_color_rgb(40,0,60)
	/////////////////////////////////////////////////////
	/////////////////////////////////////////////////////
	roomNum = 13; 
	roomDialogueData[roomNum] = "AH, THESE ARE MY PETS. AREN'T THEY JUST PRECIOUS?%%|THEY DON'T SEEM TOO HAPPY TO SEE YOU, THOUGH...%|MAYBE WE SHOULD LET THEM OFF THEIR LEASHES.%%|";
	dialogueSound[roomNum] = sfx_dialogue2
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
