/// @description Menu Navigation
var _last_index = index_;

if o_input.up_pressed_{
		//new index_ equals either 0, or whatever the current index is minus one. whichever is larger
	index_ = max(--index_, 0);	//set index -1 as argument before processing
}
if o_input.down_pressed_{
		//new index_ equals either the last element of the list, or the current index + 1
	index_ = min(++index_, option_length_ - 1);	//set index -1 as argument before processing
}
if _last_index != index_ {//play sound if index changes
	audio_play_sound(a_menu_move, 1, false); 	
}


if o_input.action_one_pressed_ {
	switch (index_) {
		case options.continue_game:
			audio_play_sound(a_menu_select, 3, false);
				//show_debug_message("Continue");
		//UNCOMMENT TO ALLOW LOADING
			//ini_load("save_data.ini");
			//DELETE WHEN LOADING IS ENABLED
				room_goto(r_world);
			break;
			
		case options.new_game:
			audio_play_sound(a_menu_select, 3, false);
			room_goto(r_world);
			break;
		
		case options.credits:
			audio_play_sound(a_menu_select, 3, false);
			show_debug_message("Credits");
			break;
		
		case options.quit:
			
			game_end();
			break;
	}
}