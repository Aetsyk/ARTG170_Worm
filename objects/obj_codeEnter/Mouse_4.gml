if (string_concat_ext(codeManager.currentCode, "", 3) == codeManager.correctCode) {
	global.solvedPuzzle = true;
	room_goto(rm_area3);
}