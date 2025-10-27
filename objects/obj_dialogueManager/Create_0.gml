// initialization

dialogue = new scr_dialogue(); // new dialogue object

keyNext = vk_space; // what key to press to advance dialogue
showingDialogue = false; // whether the dialogue should be showing rn
currentDialogue = dialogue.pop(); // which line

textMaxWidth = 10;
charCurrent = 1;
charSpeed = 0.5;

currentDialogue = scr_stringWrap(currentDialogue, textMaxWidth);