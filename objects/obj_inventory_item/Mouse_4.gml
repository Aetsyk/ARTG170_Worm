// pressing the item icon will select it
// item will be consumed if it's used in the right context
// take inspo from dialogue system?

//sprite_index = spr_enemy;
if (inventoryManager.currentlyHovered == itemName) {
	// unselect if already selected
	inventoryManager.currentlyHovered = "none";
} else {
	inventoryManager.currentlyHovered = itemName;
}