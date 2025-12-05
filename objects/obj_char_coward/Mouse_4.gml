//audio_play_sound(sfx_interact, 10, false);
if (!global.dialoguePlaying) {
	talkingStance = true;
	if (!global.seenCowardDialogue1) {
		currentDialogue = dialogue1;
		show_debug_message("enabled talking stance?" + string(talkingStance));
		dialogue1.startDialogue = true;
		global.seenCowardDialogue1 = true;
		talkingStance = true;
	}
}