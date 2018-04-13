/// @description blinking and shadows

draw_sprite(s_medium_shadow, 0, x, y); //shadow first
draw_self();
	//blinks faster as approaches end of alarm
var _interval = ceil(alarm[0]/global.one_second) *8; //blinks faster as approaches end of alarm
draw_self_flash(c_red, _interval, alarm[0]);