if (showingDialogue) {
	// formatting specifications
	var textX = 30;
	var textY = 18;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = string_height(currentDialogue.message);
	height += padding * 2;
	textX = padding * 2;
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
}

draw_set_alpha(alpha);