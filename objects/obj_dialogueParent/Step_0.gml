if (startDialogue) {
	global.dialoguePlaying = true;
	if (!showingDialogue) {
		if (dialogue.count() <= 0) {
			instance_destroy(); // out of lines
			dialogueEnd = true;
			global.dialoguePlaying = false;
			return;
		}
	
		currentDialogueLine = dialogue.pop(); // get first line in list
		showingDialogue = true;	
	} else {
		var _len = string_length(currentDialogueLine.message);
		currentDialogueLine.message = scr_stringWrap(currentDialogueLine.message, textMaxWidth);
		
		if (keyboard_check_released(keyNext) || mouse_check_button_pressed(mb_left)) {
			if (charCurrent < _len)
			{
				charCurrent = _len;
			} else {
				showingDialogue = false;
				charCurrent = 0;
			}
	    }
	}
}