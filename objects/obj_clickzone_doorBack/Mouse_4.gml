if (!global.dialoguePlaying) {
	audio_play_sound(sfx_interact, 10, false);
	room_goto(destination);
}