if (room != rm_title && room != rm_opening && room != rm_ending) // eventually change this to an array of forbidden rooms
{
	visible = true;
	if (inventoryManager.currentlyHovered != itemName && isHovering) {
		isHovering = false;
		image_blend = c_white;
	}
} else {
	visible = false;
}