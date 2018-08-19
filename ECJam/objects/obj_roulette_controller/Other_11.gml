/// @description Get Selected option
num = -1;

with (obj_roulette_pointer) {
	inst = instance_place(x, y, obj_roulette_option);
	if (inst != noone) {
			other.num = inst.value;
	}
}

currentEnemy = instance_find(obj_enemy, 0);

switch (num) {
	// attack
	case 0:	alarm[1] = 60; player_attack(num); break;
	// makeup
	case 1: alarm[1] = 315; player_makeup(); break;
	// fang
	case 2: alarm[1] = 120; player_attack(num); break;
	// Hurt self
	case 3: alarm[1] = 60; show_debug_message("You hurt yourself in confusion!"); break;
	default: alarm[1] = 30;
}