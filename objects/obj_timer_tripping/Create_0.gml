// Inherit the parent event
event_inherited();

activate_timerEvent = function() {
	if (instance_exists(tripDialogue)){
		tripDialogue.startDialogue = true;
	}
}