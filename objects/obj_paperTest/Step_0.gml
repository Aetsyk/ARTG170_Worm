if (array_contains(mirrorManager.completedParts, selfPortion)) {
	isComplete = true;
	x = targetX;
	y = targetY;
}

if (!isComplete && isDragging && mouse_check_button(mb_left)) {
    x = mouse_x + offsetX;
    y = mouse_y + offsetY;
}