///@arg hitbox

//Checks to see if We are invincible. Then checks to see if we are in the target list of the attacker hitbox

var _hitbox = argument0;
var _is_target = is_target(object_index, _hitbox.targets_); //check to see if we are in the target list


return !invincible_ and _is_target;


//returns false if we're invincible and returns false if not in target list