   /// @description Insert description here
   
	//Place player in proper load place
if global.load == true{
	global.player_start_position = instance_position(global.start_x, global.start_y, o_start_position);

global.load = false; //resetting to "not loading"
}
   
   
   
if instance_exists(global.player_start_position) {
	if instance_exists(o_player) {
		//in the player object, we have code that makes them persistent when they collide with a door
			//this will set their persistence back 
			o_player.persistent = false;
			o_player.x = global.player_start_position.x;
			o_player.y = global.player_start_position.y;
			o_player.layer = layer_get_id("Instances");
	} else {
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		
		instance_create_layer(_start_x, _start_y, "Instances", o_player);	
	}
//UNNECESSARY	global.player_start_position = noone; //resetting start position to null
} 