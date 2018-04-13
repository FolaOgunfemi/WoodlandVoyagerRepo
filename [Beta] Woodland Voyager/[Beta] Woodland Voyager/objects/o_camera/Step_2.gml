 /// @description After all other objects have been moved

if !instance_exists(target_) exit;

	//moves camera object (not the view)
x = lerp(x, target_.x, 0.1); //moves a certain percentage(10%) toward target using linear interpolation
y = lerp(y, target_.y-8, 0.1); //added "-8" to center it on player sprite origin
			//SUB-PIXEL MOVEMENT - we use multiple pixels on screen for a single actual pixel in the game processing. This is to adjust that
x = round_n(x, 1/scale_); //we have a scale of 4 meaning we are scaling up by 4.. this means that we should round using increments of .25 to account for each pixel on the screen
y = round_n(y, 1/scale_);
		//Clamping - keeping within room boundaries
x =clamp(x, width_/2, room_width - width_/2); // x clamped to these two values
y= clamp(y, height_/2, room_height - height_/2);


//set view position to camera object
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2); //camera origin is defaulted to top left of screen so we adjust the x and y to the middle of the screen(half the length and width)

