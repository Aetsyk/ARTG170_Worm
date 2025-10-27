if (!showingDialogue) {
	if (dialogue.count() <= 0) {
		instance_destroy(); // out of lines
		
		return;
	}
	
	currentDialogue = dialogue.pop(); // get first line in list
	showingDialogue = true;
} else {
	var _len = string_length(currentDialogue.message);
	if (keyboard_check_released(keyNext)) {
		if (charCurrent < _len)
		{
			charCurrent = _len;
		} else {
			showingDialogue = false;
			currentDialogue.message = scr_stringWrap(currentDialogue.message, textMaxWidth);
			charCurrent = 0;
		}
    }
}