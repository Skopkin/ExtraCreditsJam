if(!in_submenu){
	if(keyboard_check_pressed(vk_up)){
		audio_play_sound(snd_menu_select,5,false);
		if (selected_option == 0){
			selected_option	= option_count -1;
		} else{
		selected_option --;
		}

	}else if(keyboard_check_pressed(vk_down)){
		audio_play_sound(snd_menu_select,5,false);
		if(selected_option == option_count -1){
			selected_option = 0;
		}else{
			selected_option ++;
		}

	}
	
}

if(keyboard_check_pressed(vk_enter) or (keyboard_check_pressed(vk_space))){
	audio_play_sound(snd_menu_confirm,5,false);
	switch(selected_option){
		case 0: //Start Game
			screen_transition(.2,room_tutorial, "");
			break;
		case 1: //Controls
			in_submenu = !in_submenu;
			break;
		case 2: // Exit Game
			game_end();
			break;
	}
	
}