// Inherit the parent event
event_inherited();

activate_button = function() {
	if (global.playerturn && !global.showitems) {
		global.showspells = false;
		global.showitems = true;
	}
	else {
		global.showitems = false;
	}
}