if (!showingDialogue) {
	if (dialogue.count() <= 0) {
		instance_destroy(); // out of lines
		
		return;
	}
	
	currentDialogue = dialogue.pop(); // get first line in list
	showingDialogue = true;
} else {
	if (keyboard_check_released(keyNext)) {
		showingDialogue = false;
		alpha = 0;
	}
}