/// loop through inventory and draw sprite if inventory is there and draw a box if there isnt

if !o_game.paused_ exit;
var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

for (var _i=0; _i<_array_size; _i++) {
	
	var _box_x = _x + _i * 32;
	var _box_y = _y;
	draw_sprite(s_inventory_box, 0, _box_x, _box_y);
	
	var _item = global.inventory[_i];
	if instance_exists(_item) {
		draw_sprite(_item.sprite_, 0, _box_x + 16, _box_y + 16);
	}
		//if current iteration in loop is the same as item we have selected
	if _i == item_index_ {
		draw_sprite(s_pause_cursor, image_index / 8, _box_x, _box_y); 
		if instance_exists(_item) {
			draw_text(	_x+4, _y+36, _item.description_);
				//get the height of the description so that we can draw the cost properly
			var _description_height = string_height(_item.description_);
			draw_text(_x+4, _y+48+ _description_height, "Stamina cost: "+string(_item.cost_));
		}
	}
	
	
}

draw_sprite(s_inventory_box, 0, 4, 4);
draw_sprite(s_inventory_box, 0, 36, 4);
		//item 0
	if instance_exists(global.item[0]) {
	draw_sprite(global.item[0].sprite_, 0, 20, 20);
	}
		//item 1
	if instance_exists(global.item[1]) {
	draw_sprite(global.item[1].sprite_, 0, 52, 20);
	}