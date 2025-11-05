if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

instance_deactivate_object(obj_char_bm); 

audio_sound_gain(sfx_clock, 0.25, 0);