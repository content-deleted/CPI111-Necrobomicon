/// @description  check if the event array is correct
var eventCheck = true;
for(var i = dataStart; i<dataEnd; i++){
	if(correctEventFlags[i] != roomController.eventFlags[i])
		eventCheck = false;//change the events
	show_debug_message(string(i)+"correct:"+string(correctEventFlags[i]))
	show_debug_message(string(i)+"current:"+string(roomController.eventFlags[i]))
}
if(eventsCorrect != eventCheck){
	if(eventsCorrect){
		roomController.roomKeys--;
	}
	else{
		roomController.roomKeys++; 
	}
	eventsCorrect = eventCheck;
}

