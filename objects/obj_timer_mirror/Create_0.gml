// Inherit the parent event
event_inherited();

activate_timerEvent = function() {
	room_goto(bathroom);
	if (instance_exists(dialogue)){
		dialogue.startDialogue = true;
	}
	dialogue.startDialogue = true;
}