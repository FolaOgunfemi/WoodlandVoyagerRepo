/// @description ATTACK STATE
	//shoots stinger
	
	
	
if !instance_exists(o_player) {
state_ = hornet.move;
exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);
if speed_ == 0 {
	alarm[2] = global.one_second * random_range(2, 4);
		//hornet's attack will have large area for aim. not very precise aim
	var _direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-30, 30);
	var _stinger = instance_create_layer(x, y, "Instances", o_stinger);
		_stinger.direction = _direction;
		_stinger.image_angle = _direction;
		_stinger.speed = 2;
			audio_play_sound(a_stinger, 1, false);
		state_ = hornet.move; //reset
		
}
//////////////
// create_hitbox(sprite_index, x, y, 0, 1, [o_player], 1, 5, "bat's hitbox");
// add_movement_maxspeed(_direction, 0.123, 1);
