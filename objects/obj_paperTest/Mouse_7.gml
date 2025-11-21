if (!isComplete) {
	isDragging = false;

	var width = bbox_right - bbox_left;
	var height = bbox_bottom - bbox_top;
	
	var offsetSpace = 70;

	if (x >= targetX - offsetSpace && x <= targetX + offsetSpace &&
	    y >= targetY - offsetSpace && y <= targetY + offsetSpace) {
		isComplete = true;
		x = targetX;
		y = targetY;
	}
}