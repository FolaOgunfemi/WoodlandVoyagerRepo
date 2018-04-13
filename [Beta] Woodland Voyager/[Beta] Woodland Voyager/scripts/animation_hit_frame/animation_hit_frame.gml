///@arg finalFrame
var _frame = argument0;
var _speed = global.one_second/sprite_get_speed(sprite_index); //Sprite speed is affected by game speed, so we will calculate the distance between them
return (image_index >= _frame+1 - image_speed/_speed) and (image_index < _frame+1);
// Example image_speed 0.8 : Example Frame 3
	// Checks to see if index is within range [3.2 - 4] 