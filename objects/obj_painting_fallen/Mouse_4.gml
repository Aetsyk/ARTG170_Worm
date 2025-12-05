if (global.paintingState == "fallen") {
	if (!instance_exists(dialogue)) {
		instance_create_layer(0, 0, "Instances", dialogue);
	}
	
	dialogue.startDialogue = true;
}