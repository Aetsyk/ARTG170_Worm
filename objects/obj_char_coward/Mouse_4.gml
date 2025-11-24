//audio_play_sound(sfx_interact, 10, false);
if (!global.dialoguePlaying) {
	if (!global.seenCowardDialogue1) {
		dialogue1.startDialogue = true;
		global.seenCowardDialogue1 = true;
		talkingStance = true;
	}
}