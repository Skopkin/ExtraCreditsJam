/// @arg camera
/// @arg shake_duration
/// @arg shake_amount
/// @arg rotation_bool
/// @arg rotation_amount
/// @arg zoom_bool
/// @arg zoom_amount

arg_camera = argument0; // view_camera[?]
arg_duration = argument1; // shake duration in frames
arg_shake = argument2; //shake intensity in # of pixels
arg_rot_toggle = argument3; // toggle rotation in the shake on and off
arg_rot_amount = argument4; // rotation intensity in degrees (best btwn 0 & 2)
arg_zoom_toggle = argument5; // turns zoom on and off
arg_zoom_amount = argument6; // # of pixels to zoom in

// maximum rotation allowed
var rotation_max = 3;

//set which camera to shake
obj_camera_shake.my_camera = arg_camera;

// set shake properties
obj_camera_shake.alarm[0] = arg_duration;
obj_camera_shake.shake_amount = arg_shake;

/// make sure rotation isnt above 5 degrees
if(abs(arg_rot_amount) > rotation_max){
	arg_rot_amount = rotation_max;
	show_debug_message("Rotation amount greater than limit, set to " + string(rotation_max));
}
obj_camera_shake.rotation_amount = arg_rot_amount;

obj_camera_shake.zoom_amount = arg_zoom_amount;

// set bools
obj_camera_shake.shake = true;
obj_camera_shake.zoom_toggle =  arg_zoom_toggle;
obj_camera_shake.rotation_toggle = arg_rot_toggle;



