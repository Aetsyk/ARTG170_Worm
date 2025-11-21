// Check if the mouse is over the object before dragging
var width = bbox_right - bbox_left;
var height = bbox_bottom - bbox_top;

if (!isComplete && mouse_x > bbox_left - width && mouse_x < bbox_left + width &&
    mouse_y > bbox_top - height && mouse_y < bbox_top + height) {
    isDragging = true;
    offsetX = bbox_left - mouse_x;
    offsetY = bbox_top - mouse_y;
}