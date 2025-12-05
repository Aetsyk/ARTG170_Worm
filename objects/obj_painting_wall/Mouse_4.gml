if (global.paintingState == "wall") {
	// if uncover painting condition met
	var layer_id = layer_get_id("Assets_FallenPainting");
	layer_set_visible(layer_id, true);
} else if (global.paintingState == "fallen") {
	if (global.inventory.getItemIndex("screwdriver") > -1 && inventoryManager.currentlyHovered == "screwdriver") {
		audio_play_sound(sfx_positive, 10, false);
		global.paintingState = "open";
		successDialogue.startDialogue = true;
		global.inventory.consume("screwdriver");
	
		var layer_id = layer_get_id("Assets_OpenPainting");
		layer_set_visible(layer_id, true);
	} else {
	}
} else {
	// go to ending room
}