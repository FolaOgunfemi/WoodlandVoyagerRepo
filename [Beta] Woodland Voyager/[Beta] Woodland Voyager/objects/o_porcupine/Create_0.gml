/// @description Overriding Parent Create

event_inherited(); //this must be called in order to run the parent code before using this information 
initialize_movement_entity(0.5, 0.5, o_solid); // Override parent friction and make it smaller


enum porcupine {
	hit, //must match the same order as parent
	idle,
	move,
	attack,
	wait 
}
starting_state_ = porcupine.idle;
state_=starting_state_;

image_index = 0; //start on first frame
image_xscale = choose(1, -1); //picks a random direction between right and left

	//random_range chooses random number between two provided
alarm[1] = random_range(0,1) * global.one_second  //random decimal * 1 second