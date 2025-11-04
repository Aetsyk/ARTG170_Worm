global.inventory.add("worm", spr_tiny_werm);
flavorText.startDialogue = true;
global.gotWorm = true;

// Inherit the parent event
event_inherited();

instance_destroy();

