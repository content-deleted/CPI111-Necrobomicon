/// @description Actor fallen event

x = roomController.roomEntrenceX;
y = roomController.roomEntrenceY;

//reset movement
canMove = true;
falling = false;

//reset image values
image_xscale = 1;
image_yscale = image_xscale;
image_angle = 0;
image_alpha = 1;

//deal damage
healthCurrent -= 5;
