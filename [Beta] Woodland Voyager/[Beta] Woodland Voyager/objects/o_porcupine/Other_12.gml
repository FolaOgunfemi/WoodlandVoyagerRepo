/// @description MOVE STATE

image_speed = 0.35; //set animation

	set_sprite_facing();

	if alarm[1] <= 0 { //if alarm has turned off for movement state... Not moving
		apply_friction_to_movement_entity();	
	}
	else {
		add_movement_maxspeed(direction_, 0.05, .5);
	}

move_movement_entity(true); //enact movement and allow them to bounce off of objects

	if speed_ == 0 { //if speed is 0, set the alarm again and switch to idle state
		alarm[1] = random_range(1, 3) * global.one_second
		state_ = porcupine.idle;
	}
	
	porcupine_attack();