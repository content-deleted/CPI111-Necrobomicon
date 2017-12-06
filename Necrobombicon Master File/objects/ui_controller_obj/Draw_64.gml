/// @description Forgive me, for I have sinned
currentX = 5;
currentY = window_get_height() - sprite_get_height(hp_base)/2 - 8;

draw_set_font(font_explorer);
if (global.gamePaused) // if game is paused
{
	//book
	draw_sprite(MenuBG,0,window_get_width()-sprite_get_width(MenuBG),window_get_height()-sprite_get_height(MenuBG));
	//garbage text placeholder trash
	textX = window_get_width() - sprite_get_width(MenuBG) + 200;
	textY = window_get_height()-sprite_get_height(MenuBG) + 120;
	draw_text(textX - 40,textY,"Game is paused.");
	draw_text(textX,textY + 100,"Unpause");
	draw_text(textX,textY + 160,"Fullscreen");
	draw_text(textX,textY + 220,"Quit");
	//cursor, hard-coded for extra crying
	draw_sprite(MenuCursor,0,textX + 145,textY + 40 + 60*menuPos);
}

// health bar
if (Player_obj.healthCurrent > .5 * Player_obj.healthMax)
	draw_sprite_ext(hp_base,0,currentX,currentY,.5,.5,0,c_white,1);
else if (Player_obj.healthCurrent > .25 * Player_obj.healthMax)
	draw_sprite_ext(hp_base,1,currentX,currentY,.5,.5,0,c_white,1);
else if (Player_obj.healthCurrent > 0)
	draw_sprite_ext(hp_base,2,currentX,currentY,.5,.5,0,c_white,1);
var horzOffset = 32;
for (i = 1; i <= Player_obj.healthCurrent; i++)
{
	draw_sprite_ext(hp_fuse,i mod 2,currentX + horzOffset,currentY - (i * sprite_get_height(hp_fuse)/2),0.5,0.5,0,c_white,1);
}

image_speed = 0.2 //set the animation speed
if(Player_obj.healthCurrent > 0){
//check which fire to draw
if(Player_obj.healthCurrent mod 2) draw_sprite_ext(hp_fire_right,-1,currentX + horzOffset-35,currentY - (Player_obj.healthCurrent * sprite_get_height(hp_fuse)/2),0.5,0.5,0,c_white,1);
else draw_sprite_ext(hp_fire_left,-1,currentX + horzOffset-25,currentY - (Player_obj.healthCurrent * sprite_get_height(hp_fuse)/2),0.5,0.5,0,c_white,1);
}

currentX += sprite_get_width(hp_base)/2 + 10;
currentY +=30;//one day we will pay for our sins

// bomb icon
draw_sprite(sigil_bkg,0,currentX,currentY);	// background image
currentX += 48;
currentY += 48;
switch(roomController.currentBombType)
{
	case bombType.bounce: draw_sprite(bounceBomb,0,currentX,currentY); break;
	case bombType.fuse: draw_sprite(fuseBomb,0,currentX,currentY); break;
	case bombType.grenade: draw_sprite(grenadeBomb,0,currentX,currentY); break;
	case bombType.remote: draw_sprite(remoteBomb,0,currentX,currentY); break;
	case bombType.rocket: draw_sprite(rocketBomb,0,currentX,currentY); break;
	default: draw_sprite(baseBomb,0,currentX,currentY); break;  // includes base bomb
}
if (roomController.bombBag)
	draw_text(currentX + 10,currentY,string(roomController.currentBombs));
currentX -= 48;
currentY -= 48;
currentX += sprite_get_width(sigil_bkg) + 10;
// sigil icon
switch(Player_obj.currentSigType)
{
	case sigType.fire: draw_sprite(sigil_fire_spr,0,currentX,currentY); break;
	case sigType.air: draw_sprite(sigil_air_spr,0,currentX,currentY); break;
	case sigType.logic:  draw_sprite(sigil_logic_spr,0,currentX,currentY); break;
	case sigType.freeze:  draw_sprite(sigil_freeze_spr,0,currentX,currentY); break;
	case sigType.time: draw_sprite(sigil_time_spr,0,currentX,currentY); break;
	default: draw_sprite(sigil_bkg,0,currentX,currentY); break;	// includes clear
}
// necrobombicon
currentX += sprite_get_width(sigil_bkg) + 10;
draw_sprite_stretched(book_talk_spr,0,currentX,currentY,100,100)
//dialogue
currentX += 80
currentY -= 35
if (string_length(UI_BottomDialogue.textContent)>0) {
	draw_sprite(speech_bubble_spr,0,currentX,currentY)
}