/// @description ATTACK STATE
 
 image_speed = 0.35; //same as move speed
 
 var final_frame = image_number - 1;
  
if animation_hit_frame(1  ) {
	var _damage = 1;
	var _knockback = 4; 
	var _life = 30; //hitbox lifespan //DEBUG: originally 1
	var _hitbox_origin_id = "porcupine's hitbox";
	
	create_hitbox(s_porcupine_hitbox, x, y-8, 0, _life, [o_player], _damage, _knockback, _hitbox_origin_id);
	audio_play_sound(a_porcupine_attack, 5, false);
	
}

 		//RETURN TO NORMAL STATE
if animation_hit_frame(final_frame)  {
		state_ = porcupine.idle;
		sprite_index = s_porcupine_run;
		
		//reset alarm
		alarm[1] = 2*global.one_second;
}
porcupine_attack(); 