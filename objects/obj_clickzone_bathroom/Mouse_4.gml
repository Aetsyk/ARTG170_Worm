if (!global.dialoguePlaying && global.isTripping != -1) {
	audio_play_sound(sfx_interact, 10, false);
	room_goto(destination);
} else if (!global.dialoguePlaying && global.isTripping == -1) {
	audio_play_sound(sfx_interact, 10, false);
	if (!instance_exists(dialogue)) {
		dialogue.startDialogue = true;
	}
}