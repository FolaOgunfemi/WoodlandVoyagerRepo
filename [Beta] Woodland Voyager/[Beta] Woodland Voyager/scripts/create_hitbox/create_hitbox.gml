  ///@arg sprite
  ///@arg x
  ///@arg y
  ///@arg angle
  ///@arg frames
  ///@arg target_array
  ///@arg damage
  ///@arg knockback
  ///@arg hitboxID
			//informs coder  that direction is a parameter when we click next this function
  
 var _sprite = argument0;
 var _x = argument1;
 var _y = argument2;
 var _angle = argument3;
 var _frames = argument4;
 var _array = argument5;
 var _damage = argument6;
 var _knockback = argument7;
 var _hitbox_id  = argument8;
 
  var _hitbox = instance_create_layer(_x, _y, "Instances", o_hitbox); //NOTE: This returns the id of the instance
	var _hitbox_origin_checker = instance_create_layer(_x, _y, "Instances", o_hitbox_origin_checker); //creating Fola custom hitbox checker

 _hitbox.sprite_index = _sprite; //updates hitbox with whateve one is provided, allowing us to use one object for multiple different hitboxes
_hitbox.image_angle = _angle
_hitbox.alarm[0] = _frames; //setting the number of frames that need to pass before the alarm event is called
_hitbox.targets_ = _array;
_hitbox.damage_ = _damage;
_hitbox.knockback_ = _knockback;
_hitbox.hitbox_origin_id_ = _hitbox_id;

return _hitbox;

