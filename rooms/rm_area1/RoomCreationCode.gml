if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

if (instance_exists(obj_char_bm) && !global.openedDoor) {
	instance_activate_object(obj_char_bm); 
} else if (global.solvedPuzzle) {
	instance_deactivate_object(obj_char_bm); 
}

if (global.solvedPuzzle && !global.seenDialogue4) {
	instance_create_layer(0, 0, "Instances", obj_postBM);
	obj_postBM.startDialogue = true;
	global.seenDialogue4 = true;
}

audio_sound_gain(sfx_clock, 0.25, 0);