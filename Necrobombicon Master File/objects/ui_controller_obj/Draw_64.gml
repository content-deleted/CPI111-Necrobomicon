/// @description Forgive me, for I have sinned
currentX = 25;
currentY = camera_get_view_height(view_camera[0]) - sprite_get_height(hp_base);

draw_set_font(font_explorer);
if (global.gamePaused) // if game is paused
{
	//book
	draw_sprite(MenuBG,0,window_get_width()-sprite_get_width(MenuBG),window_get_height()-sprite_get_height(MenuBG));
	//garbage text placeholder trash
	draw_text(400,245,"Game is paused.");
	draw_text(440,400,"Unpause");
	draw_text(440,460,"Fullscreen");
	draw_text(440,520,"Quit");
	//cursor, hard-coded for extra crying
	draw_sprite(MenuCursor,0,540,340+60*menuPos);
}

// health bar
if (Player_obj.healthCurrent > .5 * Player_obj.healthMax)
	draw_sprite(hp_base,0,currentX,currentY);
else if (Player_obj.healthCurrent > .25 * Player_obj.healthMax)
	draw_sprite(hp_base,1,currentX,currentY);
else
	draw_sprite(hp_base,2,currentX,currentY);
for (i = 1; i <= Player_obj.healthCurrent; i++)
{
	draw_sprite(hp_fuse,i mod 2,currentX + 70,currentY - (i * sprite_get_height(hp_fuse)));
}
currentX += sprite_get_width(hp_base) + 10;
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
currentY -= 20
if (string_length(UI_BottomDialogue.textContent)>0) {
	draw_sprite(speech_bubble_spr,0,currentX,currentY)
}