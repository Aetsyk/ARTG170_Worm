if (string_concat_ext(codeManager.currentCode) == codeManager.correctCode) {
	audio_play_sound(sfx_positive, 10, false);
	global.solvedPuzzle = true;
	global.inventory.add("entNote", spr_tiny_paper);
	global.inventory.add("romNote", spr_tiny_paper);
	global.inventory.add("key", spr_tiny_key);
	room_goto(rm_area3);
} else {
	audio_play_sound(sfx_interact, 10, false);
	if (!instance_exists(wrongDialogue)) {
		instance_create_layer(x, y, "Instances", wrongDialogue);
	}
	wrongDialogue.startDialogue = true;
	
	codeManager.currentCodeLength = 0;

	codeManager.currentCode[0] = "";
	codeManager.currentCode[1] = "";
	codeManager.currentCode[2] = "";
}