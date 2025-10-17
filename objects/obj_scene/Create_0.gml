img_list = {
	north : spr_buddy,
	south : spr_buddy,
	east : spr_buddy,
	west : spr_buddy
}

/// @function        updateScene();
/// @description     Updates image in scene depending on player direction
function updateScene() {
	sprite_index = img_list[$ global.playerfacing];
	image_index = 0;
}