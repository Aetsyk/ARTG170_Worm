// initialization

dialogue = new scr_dialogue(); // new dialogue object

keyNext = vk_space; // what key to press to advance dialogue
showingDialogue = false; // whether the dialogue should be showing rn
currentDialogueLine = noone; // which line
currentDialogueEmotion = "default";
currentDialogueChar = "";

textMaxWidth = display_get_gui_width() - 40;
charCurrent = 1;
charSpeed = 0.5;

startDialogue = false;
dialogueEnd = false;