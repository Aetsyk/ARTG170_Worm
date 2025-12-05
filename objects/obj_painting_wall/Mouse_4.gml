if (global.paintingState == "wall") {
	if (!instance_exists(dialogue1)) {
		instance_create_layer(0, 0, "Instances", dialogue1);
	}
	dialogue1.startDialogue = true;
	var layer_id = layer_get_id("Assets_FallenPainting");
	layer_set_visible(layer_id, true);
	global.paintingState = "fallen";
} else if (global.paintingState == "fallen") {
	if (global.inventory.getItemIndex("screwdriver") > -1 && inventoryManager.currentlyHovered == "screwdriver") {
		audio_play_sound(sfx_positive, 10, false);
		global.paintingState = "open";
		global.inventory.consume("screwdriver");
	
		var layer_id = layer_get_id("Assets_OpenPainting");
		layer_set_visible(layer_id, true);
	}
} else {
	room_goto(rm_ending2);
}