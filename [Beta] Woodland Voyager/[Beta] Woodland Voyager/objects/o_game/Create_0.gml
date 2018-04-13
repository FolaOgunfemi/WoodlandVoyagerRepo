   /// @description Persistent
 //Persistant objects are not destoyed when game room closes out. This will last between rooms. They are created in the room that they are attached to
 global.one_second = game_get_speed(gamespeed_fps);
 
			////TRACKING OBJECT THAT HAVE BEEN DESTROYED
global.destroyed = [];

instance_create_layer(0, 0, "Instances", o_input);



	//Set font order equal to custom font sprite
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string ,true, 1);
draw_set_font(global.font);

global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 5;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_start_position = i_game_start;
global.start_x = -1; //o_player;//i_game_start; //noone;
global.start_y = -1; //o_player;//i_game_start; //noone;
	//are we loading the game currently?
global.load = false;

			//TOGGLE BACKGROUND MUSIC
	audio_play_sound(a_music, 10, true); //10 max priority, loop
				
				// GUI SIZE
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);

	//update GUI layer if we make non-code changes in the editor
display_set_gui_size(_view_width, _view_height); 

	//PAUSE LOGIC SHOULD OCCUR AFTER GUI SO THAT THINGS ARE DRAWN
paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width()/view_wport[0];

			////CREATE INVENTORY
global.item[0] = noone;
global.item[1] = noone;
item_index_ = 0;


inventory_create(6);

inventory_add_item(o_ring_item); 
inventory_add_item(o_sword_item); 
inventory_add_item(o_ring_item);  //test if we can add twice
inventory_add_item(o_bomb_item); 






