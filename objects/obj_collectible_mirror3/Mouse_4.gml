if (!global.gotMirror3) {
	global.gotMirror3 = true;
	global.inventory.add("mirror3", spr_tiny_mirrorPiece3);
	flavorText.startDialogue = true;

	// Inherit the parent event
	event_inherited();

	instance_destroy();
}