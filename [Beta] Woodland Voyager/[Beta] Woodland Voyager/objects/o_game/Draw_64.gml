/// @description Adjust GUI defaults

if room == r_title { //don't draw HUD ets on title card
	exit;	
}
		// GUI layer always defaults to size of port on screen
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

				////CREATING PAUSE SPRITE
if sprite_exists(paused_sprite_) {
		//paused_sprite used application_surface. This takes game window size which is not the scale we want. We need to pass in scales here to scale down from game window
	draw_sprite_ext(paused_sprite_, 0, 0, 0, paused_sprite_scale, paused_sprite_scale, 0, c_white, 1);	
		draw_set_alpha(0.6); //set transparency (for rectangle)
			//draw transparent black box over screen to darken and show pausing
		draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1); //set transparency for world back to normal
			//draw_set_alpha changes alpha of EVERYTHING. THIS set alpha back to one for everything else
}


			////HUD - Scales based on number of hearts and stamina
		// HUD draw hud sprite lines as long as they need to be(based on health) and end with Hud-end sprite
		var _hud_right_edge = max(3+global.player_max_health*15, 2+global.player_max_stamina*17);
			//this method will allow sprite drawn with multiple sprites
		draw_sprite_ext(s_hud, 0, 0, _gui_height, _hud_right_edge, 1, 0, c_white, 1); //using hud at 0,0 and hud end at 1,0, then set color and alpha
		draw_sprite(s_hud_edge, 0, _hud_right_edge, _gui_height);


			////HEARTS - fill and empty dynamically
	for (var _i=0; _i<global.player_max_health; _i++) {
		var _filled = _i < global.player_health; //boolean heart filled
		draw_sprite(s_heart_ui, _filled,(4+15*_i), _gui_height-29 ) //there are 2 elements for the same heart_ui here. the 1st is element 0, an empty heart, we want the second argument to be 1..._filled would equal 1 since that is what true equals in Game Maker.
	}
	
				////STAMINA - fill and empty dynamically
	for (var _i=0; _i<global.player_max_stamina; _i++) {
		var _filled = _i < global.player_stamina; //boolean stamina filled
		draw_sprite(s_stamina_ui, _filled,(4+17*_i), _gui_height-17 ) //there are 2 elements for the same heart_ui here. the 1st is element 0, an empty heart, we want the second argument to be 1..._filled would equal 1 since that is what true equals in Game Maker.
	}


		////GEMS - count gems with custom font
var _gem_string = string(global.player_gems); //change gems interger toString so that we can use Draw Event.
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width+4; //base size on text size
var _y = _gui_height - 16 + 4;

draw_sprite(s_gem, 0, _x-16, _y+7);
draw_text(_x-8, _y-1, _gem_string);
		
		////INVENTORY draw boxes and contents
inventory_draw(4, 36);