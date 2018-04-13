/// @description Insert description here
if hurtbox_entity_can_be_hit_by(other) {
	instance_destroy();
	instance_destroy(wall_); //destroy solid part of bush
	create_animation_effect(s_bush_effect, x, y, 1, true);
	
	add_to_destroyed_list(id);
}
