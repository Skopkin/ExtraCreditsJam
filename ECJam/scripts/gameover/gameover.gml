/// @arg win_lose


win_lose = argument0;
audio_stop_all();
if(win_lose){
	screen_transition(.005,room_menu, "Congratulations\nYou made it home before morning!");
} else {
	screen_transition(.005,room_menu, "GAME OVER\nThe morning sun has vanquished the night!");
}