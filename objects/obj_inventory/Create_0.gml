// the inventory is automatically created when the first room is created (check room creation code)
// only one instance can be active at a time
// this is to prevent the inventory from appearing on the title screen
// maybe each inventory object is one page of items? to handle multi-page inventory (eventually)

inventory = new scr_inventory();
maxInvSpace = 5;
padding = 20;
itemHeight = 32 * 3 / 2;
itemWidth = 32 * 3 / 2;
currentlyHovered = "";
items = [];

x = 1400;
y = 540;

image_xscale = 4.34375;
image_yscale = 22.2187;

var _height = 0;

for (var i = 0; i < maxInvSpace; i++) {
	var item = instance_create_layer(x, bbox_top + itemHeight + padding + _height, "GUI", obj_inventory_item);
	array_push(items, item);
	_height += itemHeight * 2;
	_height += padding;
}
