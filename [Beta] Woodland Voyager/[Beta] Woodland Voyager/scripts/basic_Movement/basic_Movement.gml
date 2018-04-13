//Functional but has relatively choppy motion and also adds extra velocity to diagonal movements
		//NOTE: This is actually teo scripts, one for Create and another for Step
		
	/*	//Step Event Logic 
/// @description Movement by speed_ units

image_speed = 0;
var _animation_speed = 0.6;
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left); //-1, 0 or 1...In Game Maker this equals 1-0 if they are holding right...This value can equal either 
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0,0, _x_input, _y_input);

direction_ = point_direction(0,0, _x_input, _y_input); //takes two points and returns a direction (0, 90,180,270)
direction_facing = _input_direction/90; // Converting direction numbers into the enum values (0,1,2,3)
	if direction_facing ==4{ //360 is possible if we hit all keys. That is the same as 0, but it will return 4with above equation. 4 is not in the enum table though
		direction_facing = 0
	}
     //MOVE RIGHT AND LEFT
if _x_input !=0 && !(place_meeting(x+speed_* _x_input,y, o_solid)) /* place_meeting math is set here so that speed_ equals 2 and x equals either 0, -1 or 1. This will equal a speed_ of -2, 0 or 2*/ 
/*{	x += speed_*_x_input; 
		//Set the Sprite for this movement
//	direction_facing = dir.right;

//modify sprite speed from 0 to 60 percent of normal speed
	image_speed = _animation_speed;
	
	image_xscale = _x_input;

}

     //MOVE UP AND DOWN
if _y_input !=0 && !(place_meeting(x,y-speed_*_y_input, o_solid)) {
	y += speed_*_y_input; 
	//	direction_facing = dir.up;
			image_speed = _animation_speed;
}


// CALLING THE SPRITE LOOKUP TABLE THAT WE MADE IN CREATE
	sprite_index = sprite_[player.move, direction_facing];
*/

///DELETED CODE 
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


	/*	//Create Event Logic
		
/// @description instance variables public to all  objects in this event

						//GLOBAL VARIABLES
global.player_health = 4;
		
		//NOTE: Lookup table for sprite assignment...For every action, we will check which player action and which direction facing and assign the right sprite. (ie. attacking checks the player action and direction facing to assign the sprite "right attack"
enum player { 
	move //If I plug this into an array it'll be the same as saying 0 (the element)
}  
enum dir { //NOTE: Game Maker directions are stored as values, 0, 90, 180, 270,  ... since these enums have values 0-4, we can multiply them by values to make them equal Game Maker's directions
	right,
	up,
	left,
	down
}
						//INSTANCE VARIABLES
image_speed = 0;             
speed_ = 2;            //variable "speed" is built in value that moves an object automatically
direction_facing = dir.right; //by default
direction_ = 0; //test variable 

//This will function as our Sprite look-up table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.left] = s_player_run_right; //Remember, we will be using a scale of "-1" to flip the right sprite on axis and make it left. There is no left sprite
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.down] = s_player_run_down;

	// sprite_index = sprite_[player.move, dir.right];



     //Tutorial Notes
/*	 
ENUM TIPS
enum item { //enums are always global in Game Maker
							//Option: sword = 10; This sets this element number equal to 10 instead of 0, and all subsequents to 11 etc 
	sword, 
	potion,
	spell,
	note
}


inventory_[item.sword] = "sword";
inventory_[item.potion] = "potion";
inventory_[item.spell] = "magic_spell";
inventory_[item.note] = "note";

show_message(inventory_[1]);
*/
