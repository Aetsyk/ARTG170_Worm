if (global.openedDoor && !global.startedChapter2) {
	room_goto(rm_ending);
} else if (global.startedChapter2) {
	audio_play_sound(sfx_doorSlam, 10, false);
	room_goto(rm2Wall1);
} else if (global.inventory.getItemIndex("key") > -1 && inventoryManager.currentlyHovered == "key") {
	audio_play_sound(sfx_positive, 10, false);
	successDialogue.startDialogue = true;
	inventoryManager.items[global.inventory.getItemIndex("key")].sprite_index = spr_textbox;
	global.inventory.consume("key");
	global.openedDoor = true;
	
	var layer_id = layer_get_id("Assets_OpenDoor");
	layer_set_visible(layer_id, true);
} else if (!audio_is_playing(sfx_doorLock)) {
	audio_play_sound(sfx_doorLock, 10, false);
}