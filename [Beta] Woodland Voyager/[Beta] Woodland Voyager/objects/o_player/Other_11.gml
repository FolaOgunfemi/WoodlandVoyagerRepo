/// @description SWORD STATE

image_speed = 0.8;
var _begin_hit = 1;
var final_frame = image_number-1; 
	
if animation_hit_frame(_begin_hit) {

	var _angle = direction_facing_*90;
	var _life = 3;
	var _damage = 1;
	var _knockback = 8;
	var _hitbox_origin_id = "player's hitbox";
 	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy, o_grass, o_bush], _damage, _knockback, _hitbox_origin_id);	
	 audio_play_sound(a_swipe, 8, false); //priority 8, dont loop
	 			//HITBOX OFFSET : added to make sure hitbox strikes the right point on the screen
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; 
		break; 
		
		default: _hitbox.y -= 8; 
		break;
		 
	}
}
  
 		//RETURN TO NORMAL STATE
if animation_hit_frame(final_frame)  {
		state_ = player.move;
		
}
