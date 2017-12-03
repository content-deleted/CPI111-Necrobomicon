/// @description Insert description here
// You can write your code in this editor
//this is the variable that stores if the puzzel is solved
eventsCorrect = false;


//this represents what part of the event array is taken up by this object
dataStart = 0;
dataEnd = 4; 

//this is the array that is used for switches and other things that trigger events
for(var i = dataStart; i<=dataEnd; i++){ //expand as needed
	correctEventFlags[i] = false;
}