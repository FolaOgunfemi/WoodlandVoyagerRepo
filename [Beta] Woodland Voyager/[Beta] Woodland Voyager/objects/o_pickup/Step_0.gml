/// @description Insert description here
//compensating for Game Maker's lack of a Z variable
z_ += z_speed_;
z_speed_ += gravity_;

if z_ >= 0 {
	can_pickup_ = true;
	var _bounce_amount = 0.25;
	z_speed_ = -z_speed_ * _bounce_amount;
	
	if z_speed_ > -1 { //stop bouncing and land
		z_speed_ = 0;
		z_ = 0;
	}
}	
	
