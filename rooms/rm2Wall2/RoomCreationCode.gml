if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

instance_deactivate_object(obj_char_coward); 

layer_set_visible(layer_get_id("Assets_OpenPainting"), false);
layer_set_visible(layer_get_id("Assets_FallenPainting"), false);

if (global.paintingState == "open") {
	layer_set_visible(layer_get_id("Assets_OpenPainting"), true);
}

if (global.paintingState == "fallen") {
	layer_set_visible(layer_get_id("Assets_FallenPainting"), true);
}