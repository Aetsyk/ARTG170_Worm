audio_sound_pitch(sfx_doorSlam, 2);

if (room == rm_area3 && !audio_is_playing(sfx_clock)) {
	audio_play_sound(sfx_clock, 10, true);
	if (!audio_is_playing(sfx_ambience)) {
		audio_play_sound(sfx_ambience, 10, true);
	}
} else if (room == rm_area3) {
	audio_stop_sound(sfx_crying);
}

if (room == rm_ending || (room == rm2Wall1 && !global.startedChapter2)) {
	audio_stop_sound(sfx_ambience);
	audio_stop_sound(sfx_clock);
}

if (room == rm2Wall1) {
	audio_stop_sound(sfx_clock);
	if (!audio_is_playing(sfx_ambience)) { audio_play_sound(sfx_ambience, 10, true); }
	if (!audio_is_playing(sfx_crying)) { audio_play_sound(sfx_crying, 10, true);}
	audio_sound_gain(sfx_crying, 0.4, 0);
} else if (room == rm2Wall2) {
	if (!audio_is_playing(sfx_crying)) { audio_play_sound(sfx_crying, 10, true);}
	audio_sound_gain(sfx_crying, 0.6, 0);
} else if (room == rm2Wall3) {
	if (!audio_is_playing(sfx_crying)) { audio_play_sound(sfx_crying, 10, true);}
	audio_sound_gain(sfx_crying, 1.0, 0);
} else if (room == rm2Wall4) {
	if (!audio_is_playing(sfx_crying)) { audio_play_sound(sfx_crying, 10, true);}
	audio_sound_gain(sfx_crying, 0.6, 0);
} else if (room == bathroom) {
	if (!audio_is_playing(sfx_crying)) { audio_play_sound(sfx_crying, 10, true);}
	audio_sound_gain(sfx_crying, 3, 0);
}