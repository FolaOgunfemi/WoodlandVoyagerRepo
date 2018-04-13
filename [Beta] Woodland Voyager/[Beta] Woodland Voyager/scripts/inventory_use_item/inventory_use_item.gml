///@arg input
///@arg item

var _input = argument0;
var _item = argument1;

if _input { //spend stamina to use item.
	if instance_exists (_item) && global.player_stamina >= _item.cost_ {
			//if value of stamina becomes negative, set it equal to 0
		global.player_stamina = max(0, global.player_stamina- _item.cost_); //MAX returns the max of the two parameters
		state_ = _item.action_;
			//set stamina recharge alarm for the calling object (player)
		alarm[1] = global.one_second;
		image_index = 0; //start at beginning of animation
		
	}
} 