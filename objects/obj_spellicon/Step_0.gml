hovering = position_meeting(mouse_x, mouse_y, id);

if(global.showspells == true) {
	image_alpha = 1;

	if (hovering && mouse_check_button_pressed(mb_left)) {
		x = mouse_x-16;
		y = mouse_y-16;
	} else {
		x = initial_x;
		y = initial_y;
	}
}
else {
	image_alpha = 0;
}