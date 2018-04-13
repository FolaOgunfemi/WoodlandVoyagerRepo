///@arg item
var _item = singleton(argument0);

	//check if item is already in inventory
var _item_index = array_find_index(_item, global.inventory);
	if _item_index == -1 {
		var _i = 0;
		var _array_size = array_length_1d(global.inventory);
		
		for (var _i=0; _i<_array_size; _i++) {
			if global.inventory[_i] == noone {
				global.inventory[_i] = _item;
				return true; //item was found.. and added
			}
		}
		
	} else {
		return true; //item was found
	}
	
return false; //inventory is full

