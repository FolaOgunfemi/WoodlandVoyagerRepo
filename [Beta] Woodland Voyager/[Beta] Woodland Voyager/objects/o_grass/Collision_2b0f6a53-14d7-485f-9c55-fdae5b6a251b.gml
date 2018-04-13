/// @description destructable
var _effect_speed = random_range(0.4, 0.8);
if hurtbox_entity_can_be_hit_by(other){
   instance_destroy();
   
   //create destruction effect 
   create_animation_effect(s_grass_effect, x, y, _effect_speed, true);
}