// Inherit the parent event
event_inherited();

activate_timerEvent = function() {
	audio_sound_gain(sfx_positive, 1, 0);
	audio_sound_pitch(sfx_positive, 0.75);
	audio_sound_gain(sfx_crying, 4.0, 0);
	room_goto(bathroom);
	//timerOn = false;
}