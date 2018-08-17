
// The different available options on start screen
option[0] = "Start";
option[1] = "Controls";
option[2] = "Exit";
option_count = array_length_1d(option);


// current highlighted option on menu
selected_option = 0;

//variables for drawing of options
selection_yoffset = 3;
option_ypos_start =room_height * 2/3;
c_norm = c_white;
c_high = c_yellow;
	//# of pixels vertical spacing between buttons
option_spacing = 32;

// variables for title placement and drawing
title_spr_width = sprite_get_width(spr_title_icon);
title_xpos = room_width/2 - title_spr_width/2;
title_ystart = 100;
title_ypos = title_ystart;
title_amplitude = 5;
title_speed = .25;
title_falling = true;


//toggle for when youve selected something on main menu
in_submenu = false;

controls_[0] = "WSAD - Movement";
controls_[1] = "Space - Kick Nards";
controls_[2] = "Enter - Touch Butts";
controls_[3] = "Mouse - Tweek Nips";
controls_count = array_length_1d(controls_);





display_set_gui_size(room_width,room_height);