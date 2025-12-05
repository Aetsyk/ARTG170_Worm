if (!global.gotMirror4) {
	global.gotMirror4 = true;
	global.inventory.add("mirror4", spr_tiny_mirrorPiece4);
	flavorText.startDialogue = true;

	// Inherit the parent event
	event_inherited();

	instance_destroy();
}