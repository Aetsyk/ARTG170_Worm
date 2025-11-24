if (room != rm_title && room != rm_opening && room != rm_ending) // eventually change this to an array of forbidden rooms
{
	visible = true;
    for (var i = 0; i < global.inventory.count(); i++) {
		if (items[i].itemName != global.inventory.getList()[i].itemName) {
			items[i].itemName = global.inventory.getList()[i].itemName;
			//items[i].itemIcon = inventory.getList()[i].itemObject;
			items[i].sprite_index = global.inventory.getList()[i].itemObject;
		}
	} // update inventory
} else {
	visible = false;
}