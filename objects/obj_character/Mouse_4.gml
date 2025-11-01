//audio_play_sound(sfx_interact, 10, false);

if (!seenDialogue1) {
	dialogue1.startDialogue = true;
	seenDialogue1 = true;
}
if (seenDialogue1 && inventoryManager.inventory.getItemIndex("worm") > -1 && inventoryManager.currentlyHovered == "worm") {
	audio_play_sound(sfx_positive, 10, false);
	dialogue2.startDialogue = true;
	inventoryManager.items[inventoryManager.inventory.getItemIndex("worm")].sprite_index = spr_textbox;
	inventoryManager.inventory.consume("worm");
}

// eventually use a global variable manager