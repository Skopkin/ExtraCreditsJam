/// @arg health_death


health_death = argument0;

if(health_death){
	screen_transition(.002,room_menu);
} else {
	screen_transition(.001,room_menu);
}