if (room == rm_area3 && !audio_is_playing(sfx_clock)) {
	audio_play_sound(sfx_clock, 10, true);
	if (!audio_is_playing(sfx_ambience)) {
		audio_play_sound(sfx_ambience, 10, true);
	}
}

if (room == rm_ending || room == rm2Wall1) {
	audio_stop_all();
}

if (room == rm2Wall1) {
	audio_play_sound(sfx_ambience, 10, true);
}