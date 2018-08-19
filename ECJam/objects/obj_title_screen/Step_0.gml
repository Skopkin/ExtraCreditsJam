if(!in_submenu){
	if(keyboard_check_pressed(vk_up)){
		if (selected_option == 0){
			selected_option	= option_count -1;
		} else{
		selected_option --;
		}

	}else if(keyboard_check_pressed(vk_down)){
		if(selected_option == option_count -1){
			selected_option = 0;
		}else{
			selected_option ++;
		}

	}
	
}

if(keyboard_check_pressed(vk_enter)){
	
	switch(selected_option){
		case 0: //Start Game
			screen_transition(.05,room_main, "");
			break;
		case 1: //Controls
			in_submenu = !in_submenu;
			break;
		case 2: // Exit Game
			game_end();
			break;
	}
	
}