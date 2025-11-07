function scr_inventory() constructor {
	_itemList = [];
	
	add = function(_itemName, _itemObject, _isNote = false, _noteDialogue = noone) {
		array_push(_itemList, {
			itemName: _itemName,
			itemObject: _itemObject,
			isNote: _isNote,
			noteDialogue: _noteDialogue,
		});
	}
	
	getIcon = function(_itemName) {
		for (var i = 0; i < array_length(_itemList); i++) {
			if (_itemList[i].itemName == _itemName) {
				return _itemList[i].itemObject;
			}
		}
	}
	
	consume = function(_itemName) {
		for (var i = 0; i < array_length(_itemList); i++) {
			if (_itemList[i].itemName == _itemName) {
				array_delete(_itemList, i, 1);
			}
		}
	}
	
	getList = function() {
		return _itemList;
	}
	
	count = function() {
		return array_length(_itemList);
	}
	
	getItemIndex = function(_itemName) {
		for (var i = 0; i < array_length(_itemList); i++) {
			if (_itemList[i].itemName == _itemName) {
				return i;
			}
		}
		
		return -1;
	}
	
	isNote = function(_itemName) {
		for (var i = 0; i < array_length(_itemList); i++) {
			if (_itemList[i].itemName == _itemName) {
				return _itemList[i].isNote;
			}
		}
	}
	
	getNote = function(_itemName) {
		for (var i = 0; i < array_length(_itemList); i++) {
			if (_itemList[i].itemName == _itemName) {
				return _itemList[i].noteDialogue;
			}
		}
	}
}