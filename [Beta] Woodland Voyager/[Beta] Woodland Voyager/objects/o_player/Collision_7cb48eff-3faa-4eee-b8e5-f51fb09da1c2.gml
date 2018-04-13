 /// @description Hit Logic

if hurtbox_entity_can_be_hit_by(other) {


		// show_message(other.hitbox_origin_id_);
	if  other.hitbox_origin_id_ != "player's hitbox"{
 
   invincible_ = true;
   alarm[0] = global.one_second * 0.75;
   global.player_health -= other.damage_;
   
   var _direction = point_direction(other.x, other.y, x, y);
   set_movement(_direction, other.knockback_); 
   
   
   state_= player.hit;
		//OPTIONAL: If state change feels delayed...setting state immediately, on this frame, instead of on the next frame
			//event_user(state_);
	 audio_play_sound(a_hurt, 6, false); //priority 6, dont loop
}

} ///////////////////////////here
 //    }
// }