/// @description Stamina Recharge

global.player_stamina = min(global.player_stamina+1, global.player_max_stamina);
	//reset alarm if stamina recharge wasn't to max
if global.player_stamina < global.player_max_stamina{
	alarm[1] = global.one_second;
}
