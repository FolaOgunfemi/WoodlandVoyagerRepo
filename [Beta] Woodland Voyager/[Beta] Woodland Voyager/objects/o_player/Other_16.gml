/// @description HIT STATE

image_index = 0;

move_movement_entity(true);

apply_friction_to_movement_entity();

if speed_ == 0 { //all movement_entitys have speed_
	state_ = starting_state_;
}
