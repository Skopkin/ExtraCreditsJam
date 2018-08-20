instance_create_depth(0,0,100,obj_set_input);

// The different available options on start screen
option[0] = "START";
option[1] = "CREDITS";
option[2] = "EXIT";
option_count = array_length_1d(option);


// current highlighted option on menu
selected_option = 0;

//variables for drawing of options
selection_yoffset = 3;
option_ypos_start = room_height * 2/3 - 110;
c_norm = c_white;
c_high = make_color_rgb(255,242,0);
	//# of pixels vertical spacing between buttons
option_spacing = 44;

// variables for title placement and drawing
title_spr_width = sprite_get_width(spr_title_icon);
title_xpos = room_width/2 - title_spr_width/2;
title_ystart = 35;
title_ypos = title_ystart;
title_amplitude = 5;
title_speed = .25;
title_falling = true;


//toggle for when youve selected something on main menu
in_submenu = false;

/*controls_[0] = "Suprise! You're a Vampire! Make it back home past the";
controls_[1] = "enemies before the sun comes up. Dont waste any time!";
controls_[2] = "";
controls_[3] = "CONTROLS";
controls_[4] = "Spacebar - Stop/Start Roulette";
controls_[5] = "";
controls_[6] = "CREDITS";
controls_[7] = "Programming: Sam Kopkin & John Chapman";
controls_[8] = "Artwork: Isai Oviedo";
controls_[9] = "Music/Sound: Eddie Valladares";
controls_count = array_length_1d(controls_);
*/

credits_text = "Programming: Sam Kopkin & John Chapman\n\nArtwork: Isai Oviedo\n\nMusic/Sound: Eddie Valladarez";


display_set_gui_size(room_width,room_height);