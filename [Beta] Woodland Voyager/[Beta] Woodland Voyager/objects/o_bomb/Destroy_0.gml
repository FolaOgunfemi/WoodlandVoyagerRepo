/// @description explosion effect
create_animation_effect(s_explosion_effect, x, y, 1, true); //1 image speed, depth true



create_hitbox(s_bomb_hitbox, x, y-4, 0, 3, [o_grass, o_enemy, o_player], 2, 12,"bomb's hitbox");
audio_play_sound(a_explosion, 7, false);