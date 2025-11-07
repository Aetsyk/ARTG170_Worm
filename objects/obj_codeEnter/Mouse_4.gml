if (string_concat_ext(codeManager.currentCode) == codeManager.correctCode) {
	global.solvedPuzzle = true;
	room_goto(rm_area3);
} else {
	if (!instance_exists(wrongDialogue)) {
		instance_create_layer(x, y, "Instances", wrongDialogue);
	}
	wrongDialogue.startDialogue = true;
	
	codeManager.currentCodeLength = 0;

	codeManager.currentCode[0] = "";
	codeManager.currentCode[1] = "";
	codeManager.currentCode[2] = "";
}