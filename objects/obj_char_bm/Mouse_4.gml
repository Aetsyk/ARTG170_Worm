//audio_play_sound(sfx_interact, 10, false);
if (!global.dialoguePlaying) {
	if (!global.seenDialogue1) {
		dialogue1.startDialogue = true;
		global.seenDialogue1 = true;
		talkingStance = true;
	} else if (global.seenDialogue1 && global.inventory.getItemIndex("worm") > -1 && inventoryManager.currentlyHovered == "worm") {
		audio_play_sound(sfx_positive, 10, false);
		dialogue2.startDialogue = true;
		inventoryManager.items[global.inventory.getItemIndex("worm")].sprite_index = spr_textbox;
		global.inventory.consume("worm");
		talkingStance = true;
		global.seenDialogue2 = true;
	} else if (global.seenDialogue2) {
		dialogue3.startDialogue = true;
		global.seenDialogue3 = true;
		talkingStance = true;
	} else if (global.seenDialogue3) {
		if (!instance_exists(repeatDialogue2)) {
			instance_create_layer(x, y, "Instances", repeatDialogue2);
		}
		
		repeatDialogue2.startDialogue = true;
		talkingStance = true;
	} else {
		if (!instance_exists(repeatDialogue1)) {
			instance_create_layer(x, y, "Instances", repeatDialogue1);
		}
		
		repeatDialogue1.startDialogue = true;
		talkingStance = true;
	}
}