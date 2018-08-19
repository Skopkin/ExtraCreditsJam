/// @arg fade_speed
/// @arg target_room
/// @arg message


arg_fade_speed = argument0;
arg_target_room = argument1;
arg_end_message = argument2;

var transition_obj = instance_create_depth(0,0,-100,obj_screen_transition);

transition_obj.fade_speed = arg_fade_speed;
transition_obj.target_room = arg_target_room;
transition_obj.end_text = arg_end_message;