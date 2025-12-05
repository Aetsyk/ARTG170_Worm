if (array_length(completedParts) == 4 && !done) {
	audio_sound_gain(sfx_positive, 7.0, 0);
	audio_sound_pitch(sfx_positive, 0.4);
	audio_play_sound(sfx_positive, 10, false);
	audio_sound_pitch(sfx_positive, 1.5);
	audio_play_sound(sfx_positive, 10, false);
	layer_set_visible(layer_get_id("Assets_Portrait"), true);
	timer.timerOn = true;
	done = true;
}

global.mirrorState = mirrorState;