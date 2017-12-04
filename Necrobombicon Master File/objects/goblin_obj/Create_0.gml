/// @description Insert description here
// You can write your code in this editor
event_inherited();
healthMax = 4;
healthCurrent = healthMax;
damage = 1;

state = FSM.patrol
timer = 0

spriteArray[anim.idle, dir.north] = up_idle;
spriteArray[anim.idle, dir.northeast] = up_idle;
spriteArray[anim.idle, dir.northwest] = up_idle;
spriteArray[anim.idle, dir.south] = down_idle;
spriteArray[anim.idle, dir.southeast] = down_idle;
spriteArray[anim.idle, dir.southwest] = down_idle;
spriteArray[anim.idle, dir.east] = right_idle;
spriteArray[anim.idle, dir.west] = left_idle;

spriteArray[anim.move, dir.north] = up_Spr;
spriteArray[anim.move, dir.northeast] = up_Spr;
spriteArray[anim.move, dir.northwest] = up_Spr;
spriteArray[anim.move, dir.south] = down_Spr;
spriteArray[anim.move, dir.southeast] = down_Spr;
spriteArray[anim.move, dir.southwest] = down_Spr;
spriteArray[anim.move, dir.east] = right_Spr;
spriteArray[anim.move, dir.west] = left_Spr;

spriteArray[anim.hit, dir.north] = up_throw;
spriteArray[anim.hit, dir.northeast] = up_throw;
spriteArray[anim.hit, dir.northwest] = up_throw;
spriteArray[anim.hit, dir.south] = down_throw;
spriteArray[anim.hit, dir.southeast] = down_throw;
spriteArray[anim.hit, dir.southwest] = down_throw;
spriteArray[anim.hit, dir.east] = right_throw;
spriteArray[anim.hit, dir.west] = left_throw;

spriteArray[anim.hurt, 0] = TestWall_Sprite;

mask_index = spriteArray[anim.idle, dir.south];