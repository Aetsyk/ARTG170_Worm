// Check if the mouse is over the object before dragging
var width = bbox_right - bbox_left;
var height = bbox_bottom - bbox_top;

if (mouse_x > bbox_left - width && mouse_x < bbox_left + width &&
    mouse_y > bbox_top - height && mouse_y < bbox_top + height) {
    is_dragging = true;
    offset_x = bbox_left - mouse_x;
    offset_y = bbox_top - mouse_y;
}