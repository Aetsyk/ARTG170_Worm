if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

if (!instance_exists(obj_collectible_worm) && !global.gotWorm) {
    instance_create_layer(556, 721, "Instances", obj_collectible_worm);
}

if (!global.sawCutscene) {
	global.sawCutscene = true;
	instance_create_layer(0, 0, "GUI", obj_fadeIn);
}

instance_deactivate_object(obj_char_bm); 

audio_sound_gain(sfx_clock, 0.75, 0);