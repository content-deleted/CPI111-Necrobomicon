/// @description Instantiate
global.saved = false;
playing = true;
eventFlags[0] = false;

//enum containing types of bombs used in many places
enum bombType {
	base,
	bounce,
	rocket,
	fuse,
	remote,
	grenade
}

//camera control vars

topBound = 0
bottomBound = 0
leftBound = 0
rightBound = 0

//for larger rooms
hScroll = false
vScroll = false

//for screenshake
shakescreen = false
shakeDecelerating = false
shakeDuration = 0
horizontalStrength = 0
verticalStrength = 0
shakeOrigH = 0
shakeOrigV = 0
//i don't think these actually get used anywhere but i'm not sure
shakeV = false
shakeH = false

//for lighting
dark_surface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface))
currentDarkAlpha = 0.8 //between 0 and 1 (0=no lighting, 1=pitch black
currentDarkColor = make_color_rgb(0,0,30)
darkAlpha = []
darkColor = []
disco = []
isDisco = false
discoHue = 0
alarm[2]=1

//enum containing the types of special tiles
enum floorTileId {
	null,
	spikes,
	ice,
	pit
}

// set up the room variables
global.floorNum = room;
currentRoom = getActorRoom(Player_obj);

//the following code is a template for setting a room;
//player properties for the current room
currentBombType = bombType.base;
currentDialogue = "";
roomCleared = false;
roomLocks = 0;
roomKeys = 0;
enemys = 0;

//Room Modifiers
timedRoom = false;
maxTime = 0;
startDOT = false;

bombBag= false;
maxBombs= 0;
currentBombs = 0;

bombMagnet= false;

//now we set the floor data
setFloorData();

swapCurrentRoom(0,1);

//cue the music, baby
switch (global.floorNum) {
	case 1: audio_play_sound(mus_floor1,0,true); break
}