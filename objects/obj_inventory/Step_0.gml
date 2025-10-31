for (var i = 0; i < inventory.count(); i++) {
	if (items[i].itemName != inventory.getList()[i].itemName) {
		items[i].itemName = inventory.getList()[i].itemName;
		//items[i].itemIcon = inventory.getList()[i].itemObject;
		items[i].sprite_index = inventory.getList()[i].itemObject;
	}
} // update inventory