if (!showingDialogue) {
	if (dialogue.count() <= 0) {
		instance_destroy(); // out of lines
		
		return;
	}
	
	currentDialogue = dialogue.pop(); // get first line in list
	showingDialogue = true;
} else {
	var _len = string_length(currentDialogue);
	if (keyboard_check_released(keyNext)) {
		if (charCurrent < _len)
		{
			charCurrent = _len;
		} else {
			showingDialogue = false;
			charCurrent = 0;
		}
    }
}