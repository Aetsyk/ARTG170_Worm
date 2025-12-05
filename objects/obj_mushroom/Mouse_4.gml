if (!global.seenCowardDialogue1 && !global.dialoguePlaying) {
	audio_play_sound(sfx_interact, 10, false);

	if (!instance_exists(flavorText1)) {
		instance_create_layer(x, y, "Instances", flavorText1);
	}
	
	flavorText1.startDialogue = true;
} else if (!global.dialoguePlaying) {
	//global.inventory.add("shroom", spr_tiny_werm);
	flavorText2.startDialogue = true;
	global.ateShroom = true;

	// Inherit the parent event
	event_inherited();

	//after some time has passed add wavy effect
	//update char sprite for coward

	instance_destroy();
}