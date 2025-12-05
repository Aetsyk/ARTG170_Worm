show_debug_message("talking stance: " + string(talkingStance));
show_debug_message("dialogue playing: " + string(global.dialoguePlaying));

if (talkingStance) {
	if (global.dialoguePlaying) {
		var emotion = currentDialogue.currentDialogueEmotion;
		show_debug_message(emotion);
		switch (emotion) {
			case "default":
				sprite_index = spr_coward1;
				break;
		    case "scared":
		        sprite_index = spr_coward3;
		        break;
			case "dizzy":
				sprite_index = spr_coward2;
				break;
		    default:
		        break;
		}
	}
} else {
	talkingStance = false;
	currentDialogue = noone;
	sprite_index = spr_coward1;
}