/// @description Each Frame
depth = -y // The lower the object is, on the screen, the higher the depth...Can also use offset (y+10) if the sprite origin was not on the bottom of the character

event_user(state_); //parameter is the index of the user event(0-15) //We are making those indexes correspond with the player enum indexes

// CALLING THE SPRITE LOOKUP TABLE THAT WE MADE IN CREATE
	sprite_index = sprite_[state_, direction_facing_];
	
	if global.player_health <= 0 && !invincible_ {
	instance_destroy();
	}
	
 