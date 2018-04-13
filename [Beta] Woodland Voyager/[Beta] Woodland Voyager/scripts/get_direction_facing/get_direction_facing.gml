  ///@param direction
	//informs coder  that direction is a parameter when we click next this function
  
var _direction_ = argument0;
direction_facing_ = (_direction_/90); //argument0 is inputDirection // Converting direction numbers into the enum values (0,1,2,3)
	if direction_facing_ ==4{ //360 is possible if we hit all keys. That is the same as 0, but it will return 4with above equation. 4 is not in the enum table though
		direction_facing_ = 0
	}
	
	// direction_ = point_direction(0,0, _x_input, _y_input); //takes two points and returns a direction (0, 90,180,270)