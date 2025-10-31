if (!seenDialogue1 && inventoryManager.inventory.getItemIndex("crocodile") > -1 && inventoryManager.currentlyHovered == "crocodile") {
	dialogue1.startDialogue = true;
	seenDialogue1 = true;
	inventoryManager.items[inventoryManager.inventory.getItemIndex("crocodile")].sprite_index = spr_textbox;
	inventoryManager.inventory.consume("crocodile");
}