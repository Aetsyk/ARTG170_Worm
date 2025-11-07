if (!global.dialoguePlaying && !global.solvedPuzzle) {
	audio_play_sound(sfx_interact, 10, false);
	room_goto(destination);
}