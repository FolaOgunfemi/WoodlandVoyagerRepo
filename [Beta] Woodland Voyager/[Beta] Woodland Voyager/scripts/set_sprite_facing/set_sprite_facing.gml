		//Direction and Directional Speed
var _x_speed = lengthdir_x(speed_, direction_) //takes a speed and a direction and returns the "x speed" (basically pythagorean theorum, we are taking the hypotenuse and returning the side of the triangle that is on the x axis
	if _x_speed != 0 {
				//Make Enemy face the proper direction that they are moving
		image_xscale = sign(_x_speed);	//sign takes a number and returns 1 if the number is positive and -1 if the number is negative
	}
