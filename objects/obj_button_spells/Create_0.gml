// Inherit the parent event
event_inherited();

activate_button = function() {
	if (global.playerturn && !global.showspells) {
		global.showitems = false;
		global.showspells = true;
	}
	else {
		global.showspells = false;
	}
}