// Put necessary game objects here
instance_create_layer(room_width/2,room_height/2,"Instances", obj_camera_shake);
instance_create_layer(0,0,"Instances", obj_set_input);
instance_create_layer(0,0,"Moon_Instance",obj_moon);
instance_create_layer(0,0,"Instances", obj_enemy_controller);


view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_width,view_height);

// Pause toggle
paused = false;
screenShot = -1;

// Pause menu start location and spacing
menu_x = view_width*.5;
menu_y = view_height*.5;
button_h = 64;

// Pause menu text color defaults
normal_text = c_ltgray;
highlighted_text = c_red;

//Pause menu buttons
button[0] = "Resume"
button[1] = "Options"
button[2] = "Restart"
button[3] = "Exit"
buttons = array_length_1d(button);

// Current and previously optionected menu option values
menu_index = 0;
last_optionected = 0;