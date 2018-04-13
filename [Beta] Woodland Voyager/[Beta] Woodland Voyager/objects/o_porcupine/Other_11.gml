/// @description IDLE STATE

image_index = 0;
image_speed = 0;

//check if alarm has ended and transition to MOVE(alarm value goes from 0->-1)
if alarm[1] <= 0 {
	alarm[1] = random_range(2,4) * global.one_second //set alarm with slightly randomized value
	
	state_ = porcupine.move;
		//set direction... When movement_entity is initialized, the script also gives us a direction _ variable with a default value
	direction_ = random(360);
}

 porcupine_attack();
