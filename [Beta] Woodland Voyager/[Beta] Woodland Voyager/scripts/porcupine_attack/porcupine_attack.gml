/// @description Triggered when close to Player

if not instance_exists(o_player) exit;
var _distance_to_player = point_distance(x,y, o_player.x, o_player.y);
if _distance_to_player < 8 { //DEBUG: changed from 16 //his attack doesnt last long, might be better to wait for close distance
	state_ = porcupine.attack;
	image_index = 0;
	sprite_index = s_porcupine_attack;
}
////