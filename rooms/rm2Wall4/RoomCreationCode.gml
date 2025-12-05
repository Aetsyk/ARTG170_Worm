if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "GUI", obj_inventory);
}

if (!instance_exists(obj_bgSound)) {
    instance_create_layer(0, 0, "Assets", obj_bgSound);
}

if (!instance_exists(obj_mushroom) && !global.ateShroom) {
    var shroom = instance_create_layer(1131, 595, "Instances", obj_mushroom);
	shroom.image_xscale = -0.18;
	shroom.image_yscale = 0.18;
}

instance_deactivate_object(obj_char_coward); 