if (global.isTripping == 1 && !global.gotMirror1) {
	global.inventory.add("mirror1", spr_tiny_mirrorPiece1);
	flavorText.startDialogue = true;

	// Inherit the parent event
	event_inherited();

	instance_destroy();
}

