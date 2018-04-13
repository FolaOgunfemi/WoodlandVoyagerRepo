/// @description ATTACK STATE

if !instance_exists(o_player) {
state_ = bat.move;
exit;
}

if distance_to_object(o_player) > range_ {
	state_ = bat.move;

}

	/////EDITS: replaced set_sprite_facing(); with the following
		//have bat pursue player based on its relative direction to the player rather than based on player position on the screen alone
			//Direction and Directional Speed
	//set_sprite_facing(); 
var _direction = point_direction(x, y, o_player.x, o_player.y); //look toward player
var _x_speed = lengthdir_x(speed_, _direction) //takes a speed and a direction and returns the "x speed" (basically pythagorean theorum, we are taking the hypotenuse and returning the side of the triangle that is on the x axis
	if _x_speed != 0 {
				//Make Enemy face the proper direction that they are moving
		image_xscale = sign(_x_speed);	//sign takes a number and returns 1 if the number is positive and -1 if the number is negative
	}
	

add_movement_maxspeed(_direction, 0.125, 1);
move_movement_entity(true);


	//if on top of player
var _player = instance_place(x, y, o_player);
	if _player {
		create_hitbox(sprite_index, x, y, 0, 1, [o_player], 1, 5, "bat's hitbox");
	}