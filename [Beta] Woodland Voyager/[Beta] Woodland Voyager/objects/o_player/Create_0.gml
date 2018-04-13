/// @description instance variables public to all  objects in this event
initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();
						//INSTANCE VARIABLES
image_speed = 0;             
acceleration_ = 0.5;             
max_speed_ = 1.5;
direction_facing_  = dir.right; //by default
roll_direction_ = 0; //roll direction
roll_speed_ = 2;

starting_state_ = player.move;
state_ = player.move;


						//GLOBAL VARIABLES

		
		//NOTE: Lookup table for sprite assignment...For every action, we will check which player action and which direction facing and assign the right sprite. (ie. attacking checks the player action and direction facing to assign the sprite "right attack"
enum player { 
	move, //If I plug this into an array it'll be the same as saying 0 (the element)
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}  
enum dir { //NOTE: Game Maker directions are stored as values, 0, 90, 180, 270,  ... since these enums have values 0-4, we can multiply them by values to make them equal Game Maker's directions
	right,
	up,
	left,
	down
}

//EDITING NOTE: To change text in the same y position in a table like the one below where verything is lined up, hold ALT while highlighting text that should be changed(ie"move") and type the replacement (ie. hit) to edit
//This will function as our Sprite look-up table

		//MOVEMENT SPRITE LOOKUP TABLE
	sprite_[player.move, dir.right] = s_player_run_right;
	sprite_[player.move, dir.left] = s_player_run_right; //Remember, we will be using a scale of "-1" to flip the right sprite on axis and make it left. There is no left sprite
	sprite_[player.move, dir.up] = s_player_run_up;
	sprite_[player.move, dir.down] = s_player_run_down;

		//ATTACKING SPRITE LOOKUP TABLE
	sprite_[player.sword, dir.right] = s_player_attack_right;
	sprite_[player.sword, dir.left] = s_player_attack_right; //Remember, we will be using a scale of "-1" to flip the right sprite on axis and make it left. There is no left sprite
	sprite_[player.sword, dir.up] = s_player_attack_up;
	sprite_[player.sword, dir.down] = s_player_attack_down;

		//ROLLING SPRITE LOOKUP TABLE
	sprite_[player.evade, dir.right] = s_player_roll_right;
	sprite_[player.evade, dir.left] = s_player_roll_right; //Remember, we will be using a scale of "-1" to flip the right sprite on axis and make it left. There is no left sprite
	sprite_[player.evade, dir.up] = s_player_roll_up;
	sprite_[player.evade, dir.down] = s_player_roll_down;

		//HIT SPRITE LOOKUP TABLE
	sprite_[player.hit, dir.right] = s_player_run_right;
	sprite_[player.hit, dir.left] = s_player_run_right; //Remember, we will be using a scale of "-1" to flip the right sprite on axis and make it left. There is no left sprite
	sprite_[player.hit, dir.up] = s_player_run_up;
	sprite_[player.hit, dir.down] = s_player_run_down;

		//BOMB SPRITE LOOKUP TABLE
	sprite_[player.bomb, dir.right] = s_player_run_right;
	sprite_[player.bomb, dir.left] = s_player_run_right; //Remember, we will be using a scale of "-1" to flip the right sprite on axis and make it left. There is no left sprite
	sprite_[player.bomb, dir.up] = s_player_run_up;
	sprite_[player.bomb, dir.down] = s_player_run_down;
     //Tutorial Notes
/*	 
ENUM TIPS
enum item { //enums are always global in Game Maker
							//Option: sword = 10; This sets this element number equal to 10 instead of 0, and all subsequents to 11 etc 
	sword, 
	potion,
	spell,
	note
}m


inventory_[item.sword] = "sword";
inventory_[item.potion] = "potion";
inventory_[item.spell] = "magic_spell";
inventory_[item.note] = "note";

show_message(inventory_[1]);
*/