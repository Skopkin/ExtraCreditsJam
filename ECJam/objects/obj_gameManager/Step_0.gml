// Pause game if Escape key is pressed
if(keyboard_check_pressed(vk_escape)){
    if(!paused){
		paused = true;
		if(!sprite_exists(screenShot)){
			// Create a screenshot of the current game screen
	        screenShot = sprite_create_from_surface(application_surface,0,0,view_width,view_height,0,0,0,0);    
	    }
	} else{ // if paused, unpause
		paused = false;
	}
}

// If paused, display pause menu. Otherwise, hide and disable menu
if (paused) {
	// Deactivate all game objects in room
    instance_deactivate_all(1);
	
	// Move menu index based on user input
	menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	menu_index += menu_move;
	if (menu_index < 0) {
		menu_index = buttons-1;	
	}
	if (menu_index > buttons-1) {
		menu_index = 0;	
	}
	if (menu_index != last_optionected) {
		//audio_play_sound();
	}
	last_optionected = menu_index;
} else {
	// Delete the game screenshot
	if(sprite_exists(screenShot)){
        sprite_delete(screenShot);
    }
	
	// Reset index values
	menu_index = 0;
	last_optionected = 0;
	
	// Reactivate game objects
    instance_activate_all();
}

