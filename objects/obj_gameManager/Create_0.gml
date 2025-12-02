// setup
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;
display_set_gui_size(window_get_width(), window_get_height());

// keeps global vars

global.playerfacing = "north";

global.sawCutscene = false;

global.inventory = new scr_inventory();

// dialogue variables for Chapter 1
global.dialoguePlaying = false;
global.seenDialogue1 = false;
global.seenDialogue2 = false;
global.seenDialogue3 = false;
global.gotWorm = false;
global.solvedPuzzle = false;
global.openedDoor = false;
global.seenDialogue4 = false;
global.seenCompletion = false;

// dialogue variables for Chapter 2
global.seenCowardDialogue1 = false;
global.startedChapter2 = false;