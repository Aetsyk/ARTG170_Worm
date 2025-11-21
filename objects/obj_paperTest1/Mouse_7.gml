is_dragging = false;

var width = bbox_right - bbox_left;
var height = bbox_bottom - bbox_top;

if (x >= targetX && x <= bbox_left + width &&
    y >= targetY && y < bbox_top + height) {
}