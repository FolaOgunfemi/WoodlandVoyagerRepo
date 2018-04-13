///@arg value
///@arg target_array

var _value = argument0;
var _array = argument1;
	//The size of the array would also need to be determined. We use the following
var _array_length = array_length_1d(_array); 

//Loop through array to check if element is a target

	for (var _index=0; _index<_array_length; _index++) {
			if _value == _array[_index] {
				
				if object_is_ancestor(_value, _array[_index]) { //is this potential target also an ancestor of this object? ie. o_enemy is ancestor of porcupine
					return true;	} 
				
			}//1st if
		return true;
	}

return false;



//// Legacy: For loop written with if statements... "repeat" keyword is unique to GML
	/*
		var _index = 0;
repeat _array_length  { // does the logic FOR as long as _array_length
	if _value == _array[_index] {
		if object_is_ancestor(_value, _array[_index]) { //is this potential target also an ancestor of this object? ie. o_enemy is ancestor of porcupine
			return true;	
		} // 1st if
	}//2nd if
		return true;
		_index++
	}
	*/