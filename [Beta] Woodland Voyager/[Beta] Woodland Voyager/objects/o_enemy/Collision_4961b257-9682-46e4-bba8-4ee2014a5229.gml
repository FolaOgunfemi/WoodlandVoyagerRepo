/// @description hitbox collision event

if health_ <= 0 exit;

//check vulnerability 
if hurtbox_entity_can_be_hit_by(other) {
	  // show_message(other.hitbox_origin_id_);
	if  other.hitbox_origin_id_ == "player's hitbox" || other.hitbox_origin_id_ == "bomb's hitbox"{
	invincible_ = true;
	alarm[0] = global.one_second/2; //1/2 of second  


	health_ -= other.damage_; //NOTE: other refers to the item colliding with this object
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);

create_animation_effect(s_hit_effect, x, y-8, 1 ,true)

	set_movement(_knockback_direction, other.knockback_);
 
 audio_play_sound(a_hit, 7, false); //priority 7, dont loop
	}
} 

