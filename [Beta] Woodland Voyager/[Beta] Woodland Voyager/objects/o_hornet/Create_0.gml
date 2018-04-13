/// @description Override Create
event_inherited();
initialize_movement_entity(0.25, 0.5, o_solid);

enum hornet {
	hit, //must match the same order as parent
	move,
	attack,
}
starting_state_ = hornet.move;
state_=starting_state_;


	//random_range chooses random number between two provided
alarm[1] = global.one_second *random_range(0, 1); 
alarm[2] = global.one_second *random_range(6, 8); 

image_index = 0; //start on first frame
image_xscale = choose(-1, 1); //picks a random direction between right and left
image_speed = 1;

	//range how far it can see
range_ = 128;




