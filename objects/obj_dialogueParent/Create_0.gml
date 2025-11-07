// initialization

dialogue = new scr_dialogue(); // new dialogue object

keyNext = vk_space; // what key to press to advance dialogue
showingDialogue = false; // whether the dialogue should be showing rn
currentDialogueLine = dialogue.pop(); // which line

textMaxWidth = display_get_gui_width() - 30;
charCurrent = 1;
charSpeed = 0.5;

startDialogue = false;
dialogueEnd = false;

//currentDialogueLine.message = scr_stringWrap(currentDialogueLine.message, textMaxWidth); // adds line breaks (doesn't seem to be working rn)