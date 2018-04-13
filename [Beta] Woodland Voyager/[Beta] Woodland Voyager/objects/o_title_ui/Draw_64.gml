/// @description Insert description here

// center font
	//this sets eveerything in game to center unless undone
draw_set_halign(fa_center); 
for (var _i=0; _i<option_length_; _i++) {
	if _i == index_ {
		draw_set_color(menu_color_);
	} else {
		draw_set_color(menu_dark_color_);
	}
	draw_text(x,y+_i*12, option_[_i]); //draw everything in the options array	
}

draw_set_color(c_white); //revert global changes to color
draw_set_halign(fa_left); //revert global changes to alignment