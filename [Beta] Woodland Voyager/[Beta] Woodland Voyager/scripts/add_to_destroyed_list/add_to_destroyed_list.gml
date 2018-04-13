///@arg instance_id
///DEBUG NOTE: this system saves instance_id's to track destrooyed objects.
	//instance_ids are not always the same between different playthroughs however. If we change our method of saving/ loading, we may need to rework this system
	
var _id = argument0;
global.destroyed[array_length_1d(global.destroyed)] = _id;