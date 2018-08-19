/// @arg health_death


health_death = argument0;

if(health_death){
	screen_transition(.02,room_menu, "You died!");
} else {
	screen_transition(.01,room_menu, "GAME OVER\nThe morning sun has vanquished the night!");
}