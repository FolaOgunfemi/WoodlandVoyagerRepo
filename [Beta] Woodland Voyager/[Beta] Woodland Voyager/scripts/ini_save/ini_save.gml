///@arg file_name
	///ini files have different sections for saving information
	///SAVES TO AppData folder (which is a hidden folder naturally)
		//players can find this folder and edit it to cheat game data if they want
var _file_name = argument0;
ini_open(_file_name);

	//arguments are section,key,value
ini_write_string("Level", "Room", room_get_name(room)); 
ini_write_real("Level", "Start x", global.player_start_position.x);
ini_write_real("Level", "Start y", global.player_start_position.y); 


ini_close();