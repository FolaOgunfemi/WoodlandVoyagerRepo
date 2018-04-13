 /// @description MOVE STATE

/// @description Movement by speed_ units

image_speed = 0;
var _x_input = o_input.right_ - o_input.left_; //-1, 0 or 1...In Game Maker this equals 1-0 if they are holding right...This value can equal either 
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0,0, _x_input, _y_input);


roll_direction_ = direction_facing_ *90;

	//Check if player is moving
if _x_input==0 && _y_input==0 {
	image_index =  0;							//standing position
	image_speed = 0;
	apply_friction_to_movement_entity();		//apply friction and slow character to a stop
} else {
	 image_speed = 0.6;
	
	 //Flip Character sprite if moving to the left
		if (_x_input != 0){
			image_xscale = _x_input;
		}
		
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_*90; //update roll direction if we move
}
						///TRANSITIONS BASED ON INVENTORY
						
				//TRANSITION TO SWORD STATE
inventory_use_item(o_input.action_one_pressed_, global.item[0]);
				//TRANSITION TO EVADE STATE
inventory_use_item(o_input.action_two_pressed_, global.item[1]);



	move_movement_entity(false); //enact all movement changes

///DELETED CODE 

/*            These State Transitions are for an inventory independant system...
var _attack_input = o_input.action_one_pressed_; 
var _roll_input = o_input.action_two_pressed_;

						//TRANSITION TO SWORD STATE
if _attack_input == true {
		image_index = 0; // start from first frame of attack
	state_ = player.sword;

}

						//TRANSITION TO EVADE STATE
if _roll_input == true {
		image_index = 0; // start from first frame of attack
	state_ = player.evade;

}
*/


/*
     //MOVE LEFT      //No longer necessary thanks to _x_input
if keyboard_check(vk_left) && !(place_meeting(x-speed_,y, o_solid)) {
	x -= speed_; 
		direction_facing = dir.left;
			image_speed = _animation_speed;
			
			//NOTE:A Sprite can be flipped if you change the scale to the negative equivalent
		image_xscale = -1; 
}
*/

/*
     //MOVE DOWN             //No longer necessary thanks to _y_input
if keyboard_check(vk_down) && !(place_meeting(x,y+speed_, o_solid)) {
	y += speed_; 
		direction_facing = dir.down;
			image_speed = _animation_speed;
}
*/
