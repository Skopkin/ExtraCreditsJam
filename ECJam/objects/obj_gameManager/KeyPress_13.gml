// Activate currently optionected button
switch(menu_index) {
	// Resume
	case 0: paused = false; break;
	// Options
	case 1: break;
	// Restart
	case 2: game_restart(); break;
	// Exit
	case 3: game_end();
}