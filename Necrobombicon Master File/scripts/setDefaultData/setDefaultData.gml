///@param roomNum
var roomNum = argument0;
roomDialogueData[roomNum] = "";
dialogueSound[roomNum] = 0
bombTypeData[roomNum] = bombType.base;
setRoomLocks(roomNum)
setDefaultMods(roomNum)
setDefaultLighting(roomNum)
setDefaultShaderData(roomNum)