if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

instance_deactivate_object(obj_char_coward); 

if (global.ateShroom && global.isTripping == 0) {
	global.isTripping = 1;
	obj_timer_tripping.timerOn = true;
	// create wavy gif instance
} // isTripping gets set to -1 after recovery