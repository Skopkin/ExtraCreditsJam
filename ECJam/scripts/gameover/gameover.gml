/// @arg win_lose


win_lose = argument0;
audio_stop_all();
if(win_lose){
	moon = instance_find(obj_moon,0);
	distance = moon.path_position;
	winText = "";
	if (distance >= .9) {
		winText = "Congratulations\nYou just barely made it in time!";
	} else if (distance >= .8) {
		winText = "Congratulations\nYou made it home!";
	} else {
		winText = "Congratulations\nYou made it home with plenty of time to spare!";
	}
	screen_transition(.005,room_menu, winText);
} else {
	screen_transition(.005,room_menu, "GAME OVER\nThe morning sun has vanquished the night!");
}