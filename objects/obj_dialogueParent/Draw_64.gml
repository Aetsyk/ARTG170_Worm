if (showingDialogue) {
	// formatting specifications
	var textX = 10;
	var textY = display_get_gui_height();
	var height = 30;
	var border = 5;
	var padding = 10;
	
	height = string_height(currentDialogueLine.message) + string_height(currentDialogueLine.character);
	height += padding * 4;
	height += padding * 2
	textX += padding * 2;
	textY -= height;
	textY += padding * 2;
	
	// manual drawing will later be replaced by textbox sprite?
	draw_set_color(c_black);
	//draw_rectangle(0, 0, display_get_gui_width(), height, false);
	draw_rectangle(0, (display_get_gui_height() - height), display_get_gui_width(), display_get_gui_height(), false);
	
	draw_set_color(c_white);
	draw_rectangle(border, (display_get_gui_height() - height) + border, display_get_gui_width() - border, display_get_gui_height() + height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), (display_get_gui_height() - height) + (border * 2), display_get_gui_width() - (border * 2), display_get_gui_height() - (border * 2), false);

	// drawing character name
	draw_set_color(c_white);
	draw_set_font(fnt_charName);
	draw_set_halign(fa_left);
	
	draw_text_ext(textX, textY + padding, currentDialogueLine.character, 18, display_get_gui_width() - 192);
	
	// drawing the message text
	draw_set_font(fnt_reg);
	
	// eventually add typewriter effect
	var _len = string_length(currentDialogueLine.message);
	if (charCurrent < _len)
	{
	    charCurrent += charSpeed;
	}
	
	var _str = string_copy(currentDialogueLine.message, 1, charCurrent);
	draw_text(textX, textY + string_height(currentDialogueLine.character) + (padding*4),  _str);
}