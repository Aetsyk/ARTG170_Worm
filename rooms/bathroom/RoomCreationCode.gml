if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

instance_activate_object(obj_char_coward); 

var visibleLayer = layer_get_id("Assets");
switch (global.mirrorState) {
	case 0:
		break;
	case 1:
		visibleLayer = layer_get_id("Assets_Mirror1");
		break;
	case 2:
		visibleLayer = layer_get_id("Assets_Mirror2");
		break;
	case 3:
		visibleLayer = layer_get_id("Assets_Mirror3");
		break;
	case 4:
		visibleLayer = layer_get_id("Assets_Mirror4");
		break;
	default:
		break;
}
layer_set_visible(layer_get_id("Assets_Mirror1"), false);
layer_set_visible(layer_get_id("Assets_Mirror2"), false);
layer_set_visible(layer_get_id("Assets_Mirror3"), false);
layer_set_visible(layer_get_id("Assets_Mirror4"), false);
layer_set_visible(visibleLayer, true);

if (global.mirrorState == 4) {
	obj_mirrorCompletion.startDialogue = true;
}