if (room == bathroom_mirror) {
	if (global.inventory.getItemIndex("mirror1") > -1) {
		array_push(availableShards, mirrorShard1);
	}
	
	if (global.inventory.getItemIndex("mirror2") > -1) {
		array_push(availableShards, mirrorShard2);
	}
	
	if (global.inventory.getItemIndex("mirror3") > -1) {
		array_push(availableShards, mirrorShard3);
	}
	
	if (global.inventory.getItemIndex("mirror4") > -1) {
		array_push(availableShards, mirrorShard4);
	}
	
	for (var i = 0; i < array_length(availableShards); i++) {
		instance_activate_object(availableShards[i]);
	}
} else {
	for (var i = 0; i < array_length(availableShards); i++) {
		instance_deactivate_object(availableShards[i]);
	}
}