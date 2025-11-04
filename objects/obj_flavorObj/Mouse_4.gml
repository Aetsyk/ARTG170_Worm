if (!global.dialoguePlaying) {
	audio_play_sound(sfx_interact, 10, false);

	if (!instance_exists(dialogue)) {
		instance_create_layer(x, y, "Instances", dialogue);
	}
	dialogue.startDialogue = true;
}