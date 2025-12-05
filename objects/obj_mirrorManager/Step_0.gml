if (array_length(completedParts) == 4) {
	audio_play_sound(sfx_positive, 10, false);
	layer_set_visible(layer_get_id("Assets_Portrait"), true);
	timer.timerOn = true;
}