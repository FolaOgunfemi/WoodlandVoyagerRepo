/// @description SOFT COLLISSIONS
	
	//this direction if FROM the other enemy we collide with TO self
var _direction = point_direction(other.x, other.y, x, y);
		//when enemies collide with one another, they will then move away form each other
add_movement_maxspeed(_direction, 0.1, 2);	//keepiing acceleration low so that they dont shoot out from one another they way they would shoot out toward the player
		