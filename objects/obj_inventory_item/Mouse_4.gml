// pressing the item icon will select it
// item will be consumed if it's used in the right context
// take inspo from dialogue system?

//sprite_index = spr_enemy;

if (!global.dialoguePlaying) {
	if (global.inventory.isNote(itemName)) {
		var _noteDialogue = global.inventory.getNote(itemName);
		if (!instance_exists(_noteDialogue)) {
			instance_create_layer(0, 0, "Instances", _noteDialogue);
		}
		_noteDialogue.startDialogue = true;
	}

	if (inventoryManager.currentlyHovered == itemName) {
		// unselect if already selected
		inventoryManager.currentlyHovered = "";
		isHovering = false;
		image_blend = c_white;
	} else {
		inventoryManager.currentlyHovered = itemName;
		isHovering = true;
		image_blend = c_dkgrey;
	}
}