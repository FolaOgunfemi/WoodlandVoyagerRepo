/// @description Insert description here
enum options {
	continue_game,
	new_game,
	credits,
	quit
}

menu_color_ = make_color_rgb(247, 243, 143); //other option: 185, 248, 216
menu_dark_color_ = make_color_rgb(126,127,81); // 58, 173, 133

option_[options.continue_game] = "Continue";
option_[options.new_game] = "New Game";
option_[options.credits] = "Credits";
option_[options.quit] = "Quit";

	//here for convenience. If this menu becomes something that can change dynamically, ie. unlocking a new mode, we shouldn't place this here
option_length_ = array_length_1d(option_);

index_ = options.continue_game; //equals 0