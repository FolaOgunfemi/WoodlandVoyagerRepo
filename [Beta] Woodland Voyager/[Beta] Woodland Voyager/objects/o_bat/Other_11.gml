/// @description MOVE STATE

//alarm to change direction every so often
set_sprite_facing();
add_movement_maxspeed(direction_, 0.05, 0.5);
move_movement_entity(true);

if alarm[1] <=0 {
	alarm[1] = global.one_second * random_range(1, 3);
	direction_ = random(360);
	
}
	//TRANSITION TO ATTACK -if close to player
if instance_exists(o_player) && distance_to_object(o_player) <= range_ {
	state_ = bat.attack;	
}
