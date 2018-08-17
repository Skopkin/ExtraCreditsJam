/// @arg fade_speed
/// @arg target_room


arg_fade_speed = argument0;
arg_target_room = argument1;

var transition_obj = instance_create_depth(0,0,-100,obj_screen_transition);

transition_obj.fade_speed = arg_fade_speed;
transition_obj.target_room = arg_target_room;