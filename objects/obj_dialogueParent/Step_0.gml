if (startDialogue) {
	if (!showingDialogue) {
		if (dialogue.count() <= 0) {
			instance_destroy(); // out of lines
			dialogueEnd = true;
			
			return;
		}
	
		currentDialogueLine = dialogue.pop(); // get first line in list
		showingDialogue = true;	
	} else {
		var _len = string_length(currentDialogueLine.message);
		
		if (keyboard_check_released(keyNext)) {
			if (charCurrent < _len)
			{
				charCurrent = _len;
			} else {
				showingDialogue = false;
				//currentDialogueLine.message = scr_stringWrap(currentDialogueLine.message, textMaxWidth);
				charCurrent = 0;
			}
	    }
	}
}