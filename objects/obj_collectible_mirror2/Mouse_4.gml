if (!global.gotMirror2 && !global.dialoguePlaying) {
	global.gotMirror2 = true;
	global.inventory.add("mirror2", spr_tiny_mirrorPiece2);
	flavorText.startDialogue = true;

	// Inherit the parent event
	event_inherited();

	instance_destroy();
}