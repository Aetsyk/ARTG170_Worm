if (showingDialogue) {
	// formatting specifications
	var bottomY = display_get_gui_height() - 30;
	var padding = 10;
	var textX = 10;
	var textY = bottomY;
	var height = 0;
	var border = 5;
	var spaceBetweenNameAndContent = 50;
	draw_set_valign(fa_top)
	
	height += string_height(currentDialogueLine.message) + string_height(currentDialogueLine.character);
	height += padding * 8;
	textX += padding * 2;
	textY -= height;
	
	// drawing textbox
	draw_set_color(c_white);
	draw_rectangle(0, (bottomY - height), display_get_gui_width(), bottomY, false);
	
	draw_set_color(c_black);
	draw_rectangle(border, (bottomY - height) + border, display_get_gui_width() - border, bottomY - border, false);

	// drawing character name
	draw_set_color(c_white);
	draw_set_font(fnt_charName);
	draw_set_halign(fa_left);
	
	draw_text_ext(textX, textY + padding * 2, currentDialogueLine.character, 18, display_get_gui_width() - 170);
	
	// drawing the message text
	draw_set_font(fnt_reg);
	
	// typewriter effect
	var _len = string_length(currentDialogueLine.message);
	if (charCurrent < _len)
	{
	    charCurrent += charSpeed;
	}
	
	var _str = string_copy(currentDialogueLine.message, 1, charCurrent);
	draw_text(textX, textY + string_height(currentDialogueLine.character) + spaceBetweenNameAndContent,  _str);
}