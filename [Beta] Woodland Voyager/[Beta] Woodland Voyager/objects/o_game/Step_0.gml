/// @description TOGGLE PAUSE with deactivation
				////INVENTORY NAVIGATION
if paused_ {
	var _array_size = array_length_1d(global.inventory);
			//right
		if o_input.right_pressed_{
			item_index_ = min(item_index_ + 1, _array_size - 1); //Clamps navigation so it cant go past max
			audio_play_sound(a_menu_move, 1, false);
		}
			//left
		if o_input.left_pressed_{
			item_index_ = max(item_index_ - 1, 0); //Clamps navigation so it cant go past min
			audio_play_sound(a_menu_move, 1, false);
		}
		if o_input.action_one_pressed_{
			global.item[0] = global.inventory[item_index_]; //assign current item 
			 audio_play_sound(a_menu_select, 3, false);
		}
		if o_input.action_two_pressed_{
			global.item[1] = global.inventory[item_index_]; //assign current item 
			 audio_play_sound(a_menu_select, 3, false);
		}
}

				////PAUSING
if o_input.pause_pressed_ {
	if paused_ {
		paused_ = false;
			//if sprite exists already, destroy it first to PREVENT MEMORY LEAK
		if sprite_exists(paused_sprite_){
				sprite_delete(paused_sprite_);
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
} else {
	paused_ = true;
			//application_surface contains everything in game window(basically taking snapshot)
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0); 
		instance_deactivate_all(true); //deasctivates everything but this object
		
				//Re-activate each inventory object to make sure that they're not deactivated
			var _array_size = array_length_1d(global.inventory);
				for (var _i=0; _i<_array_size; _i++) {
					instance_activate_object(global.inventory[_i]);	
				}
		
		instance_activate_object(o_input); //reactivate input object so that it can unpause
	
	audio_play_sound(a_pause, 5, false);
		}
}
