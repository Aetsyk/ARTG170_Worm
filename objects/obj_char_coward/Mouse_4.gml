//audio_play_sound(sfx_interact, 10, false);
if (!global.dialoguePlaying) {
	talkingStance = true;
	audio_stop_sound(sfx_crying);
	if (!global.seenCowardDialogue1) {
		currentDialogue = dialogue1;
		dialogue1.startDialogue = true;
		global.seenCowardDialogue1 = true;
		talkingStance = true;
	} else if (global.isTripping == 1) {
		currentDialogue = dialogue2;
		dialogue2.startDialogue = true;
		talkingStance = true;
	} else {
		if (!instance_exists(repeatDialogue)) {
			instance_create_layer(x, y, "Instances", repeatDialogue);
		}
		currentDialogue = repeatDialogue;
		repeatDialogue.startDialogue = true;
		talkingStance = true;
	}
}