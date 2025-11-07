codeMaxLength = 3;
padding = 10;
currentCode = [];
currentCodeLength = 0;
correctCode = "530";
displayX = 654;
displayWidth = 50;
displayY = 335;

image_xscale = 3;
image_yscale = 3;

var _width = 5;

for (var i = 0; i < codeMaxLength; i++) {
	var item = instance_create_layer(displayX + _width + padding, displayY, "Instances", obj_codeDisplay);
	item.position = i;
	array_push(currentCode, item);
	_width += padding;
	_width += displayWidth * 2;
}
