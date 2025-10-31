// Note: one dialogue is one conversation (imagine that you can't do anything else until it's over)

function scr_dialogue() constructor {
	// partially taken from this tutorial: https://www.youtube.com/watch?v=k3AAxKOl-yU
	_dialogueList = []; // list of LINES
	
	add = function(_character, _message) { // add a line of dialogue. params: character name + dialogue contents
		array_push(_dialogueList, {
			character: _character,
			message: _message,
		});
	}
	
	pop = function() { // pop a line of dialogue from the array to display it
		var _topLine = array_first(_dialogueList);
		array_delete(_dialogueList, 0, 1);
		
		return _topLine;
	}
	
	count = function() { // helper function mainly to check if there's any dialogue remaining
		return array_length(_dialogueList);
	}
}