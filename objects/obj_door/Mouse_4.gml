if (global.openedDoor) {
	room_goto(rm_ending);
}

if (global.inventory.getItemIndex("key") > -1 && inventoryManager.currentlyHovered == "key") {
	audio_play_sound(sfx_positive, 10, false);
	successDialogue.startDialogue = true;
	inventoryManager.items[global.inventory.getItemIndex("key")].sprite_index = spr_textbox;
	global.inventory.consume("key");
	global.openedDoor = true;
	
	var layer_id = layer_get_id("Assets_OpenDoor");
	layer_set_visible(layer_id, true);
}