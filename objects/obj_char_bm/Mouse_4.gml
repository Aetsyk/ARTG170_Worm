//audio_play_sound(sfx_interact, 10, false);
if (!global.dialoguePlaying) {
	if (!global.seenDialogue1) {
		dialogue1.startDialogue = true;
		global.seenDialogue1 = true;
	}
	if (global.seenDialogue1 && global.inventory.getItemIndex("worm") > -1 && inventoryManager.currentlyHovered == "worm") {
		audio_play_sound(sfx_positive, 10, false);
		dialogue2.startDialogue = true;
		inventoryManager.items[global.inventory.getItemIndex("worm")].sprite_index = spr_textbox;
		global.inventory.consume("worm");
	}
}