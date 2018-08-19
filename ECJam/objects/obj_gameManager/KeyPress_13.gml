// Activate currently optionected button
audio_play_sound(snd_menu_confirm,5,false);
switch(menu_index) {
	// Resume
	case 0: paused = false; break;
	// Restart
	case 1: game_restart(); break;
	// Exit
	case 2: game_end();
}