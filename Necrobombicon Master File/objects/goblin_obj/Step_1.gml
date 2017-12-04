/// @description Insert description here
// You can write your code in this editor
timer--
randomize()

var distance = distance_to_object(Player_obj)
var angle = point_direction(x,y,Player_obj.x,Player_obj.y)

//STATE SLECTION//
if (isPlayerInSight(100,150)) {state = FSM.chase}
else if (isPlayerInSight(500,120)) {state = FSM.ranged}
else {state = FSM.patrol}

//ACTING ON STATE//
switch (state) {
	
	case FSM.chase:
		intendedDir = angle
		if (timer < 0) {
			intendedSpeed = (intendedSpeed > 0) ? 0 : 5 //alternately chase and stop
		//	playSoundAtSelf(choose(sfx_skeletonGroan1,sfx_skeletonGroan2))
			timer = room_speed
		}
		if (intendedSpeed<5 && intendedSpeed>0) {intendedSpeed = 5} //update speed if coming from another state
	break
	
	case FSM.ranged:
		intendedDir = angle
		intendedSpeed = 1.5
		if (timer < 0) {
			randomize();
			BombControl(irandom_range(0,2));
			playSoundAtSelf(sfx_gjThrow1)
			timer = room_speed
		}
	break
	
	case FSM.patrol:
		if (timer < 0) {
			intendedDir = irandom(4)*90
			intendedSpeed = (intendedSpeed > 0) ? 0 : 3 //alternately move and stop
		//	if (random(3)<1) {playSoundAtSelf(choose(sfx_skeletonGroan1,sfx_skeletonGroan2))}
			timer = room_speed
		}
	break
	
}