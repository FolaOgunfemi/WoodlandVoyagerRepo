  /// @description Go to proper room
 
	//update global starting position to the door position
global.player_start_position = other.start_;

persistent = true;
room_goto(other.room_);
