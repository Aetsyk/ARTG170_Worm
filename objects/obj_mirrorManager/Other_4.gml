instance_deactivate_object(mirrorShard1);
instance_deactivate_object(mirrorShard2);
instance_deactivate_object(mirrorShard3);
instance_deactivate_object(mirrorShard4);

if (room == bathroom_mirror) {
	layer_set_visible(layer_get_id("Assets_Portrait"), false);
	
	if (global.inventory.getItemIndex("mirror1") > -1) {
		array_push(availableShards, mirrorShard1);
		global.inventory.consume("mirror1");
	}
	
	if (global.inventory.getItemIndex("mirror2") > -1) {
		array_push(availableShards, mirrorShard2);
		global.inventory.consume("mirror2");
	}
	
	if (global.inventory.getItemIndex("mirror3") > -1) {
		array_push(availableShards, mirrorShard3);
		global.inventory.consume("mirror3");
	}
	
	if (global.inventory.getItemIndex("mirror4") > -1) {
		array_push(availableShards, mirrorShard4);
		global.inventory.consume("mirror4");
	}
	
	for (var i = 0; i < array_length(availableShards); i++) {
		instance_activate_object(availableShards[i]);
	}
}