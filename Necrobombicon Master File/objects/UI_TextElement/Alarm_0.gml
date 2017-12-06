/// @description Push from queue to text
// You can write your code in this editor
if string_length(textQueue) > 0 {
	var newChar = string_copy(textQueue,1,1)
	var append = true
	//handle special characters
	switch (newChar) {
		case ".": //delay for extra time
			alarm[0] += 8*round(room_speed*textSecondsDelay)
		break
		
		case ",": //don't delay as long
			alarm[0] += 4*round(room_speed*textSecondsDelay)
		break
		
		case "|": // clear string
			textContent = ""
			append = false
		break
		
		case "%":
			alarm[0] += 12*round(room_speed*textSecondsDelay)
			append = false
		break
	}
	
	if (append) {
		//append to the string
		textContent = string_insert(newChar,textContent,string_length(textContent)+1)
	}
	
	//normal character delay (MUST ALWAYS RUN OR BUGS WILL HAPPEN)
	alarm[0] += round(room_speed*textSecondsDelay)
	
	//finally, delete the character from the queue
	textQueue = string_delete(textQueue,1,1)
}