if (showingDialogue) {
	// formatting specifications
	var textX = 10;
	var textY = 30;
	var height = 30;
	var border = 5;
	var padding = 10;
	
	height = string_height(currentDialogue.message) + string_height(currentDialogue.character);
	height += padding * 4;
	textX += padding * 2;
	
	// manual drawing will later be replaced by textbox sprite?
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);

	// drawing character name
	draw_set_color(c_white);
	draw_set_font(fnt_charName);
	draw_set_halign(fa_left);
	
	draw_text_ext(textX, textY, currentDialogue.character, 18, display_get_gui_width() - 192);
	
	// drawing the message text
	draw_set_font(fnt_reg);
	//draw_text_ext(textX, textY + string_height(currentDialogue.character) + padding, currentDialogue.message, 18, display_get_gui_width() - 192);
	
	// eventually add typewriter effect
	var _len = string_length(currentDialogue.message);
	if (charCurrent < _len)
	{
	    charCurrent += charSpeed;
	}
	
	var _str = string_copy(currentDialogue.message, 1, charCurrent);
	draw_text(textX, textY + string_height(currentDialogue.character) + padding,  _str);
}