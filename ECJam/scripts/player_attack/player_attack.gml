/// @arg value

value = argument0;

if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);

switch (value) {
	case 0: show_debug_message("VAMPIRE PAUWNCH!"); break;
	case 2: show_debug_message("I want to suck your blood"); break;
	default: show_debug_message("oh fuck");
}

if(my_enemy.state == "Idle"){
	my_enemy.state = "Hurt";
	my_enemy.alarm[0] = my_enemy.hurt_duration;
	//decrement enemy health ****
}