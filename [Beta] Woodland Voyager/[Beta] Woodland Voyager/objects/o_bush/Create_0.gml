/// @description Insert description here
initialize_hurtbox_entity()
depth = -bbox_bottom;// bottom bounding box for the bush
	//make this a solid rigid body
wall_ = instance_create_layer(x, y, "Instances", o_solid);

//if the bush is part of room scene, it will try to be created in CREATE
	//this will check to see if it is in that destroyed list first
if is_in_destroyed_list(id) {
		instance_destroy();
		instance_destroy(wall_); //destroy solid part of bush
}
