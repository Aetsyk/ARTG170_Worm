if (!global.dialoguePlaying && global.isTripping != -1) {
	audio_play_sound(sfx_doorSlam, 10, false);
	room_goto(destination);
} else if (!global.dialoguePlaying && global.isTripping == -1) {
	if (!audio_is_playing(sfx_doorLock)) {
		audio_play_sound(sfx_doorLock, 10, false);
	}
	if (!instance_exists(dialogue)) {
		dialogue.startDialogue = true;
	}
}