// Inherit the parent event
event_inherited();

//x = window_get_width() / 2;
//y = window_get_height() / 2 + 300;

activate_button = function() {
	audio_sound_gain(sfx_ambience, 1, 0);
	audio_stop_sound(sfx_ambience);
	audio_sound_pitch(sfx_doorSlam, 2);
	audio_play_sound(sfx_doorSlam, 10, false);
	var layer_id = layer_get_id("Assets_OpenDoor");
	layer_set_visible(layer_id, true);
	timer.timerOn = true;
}