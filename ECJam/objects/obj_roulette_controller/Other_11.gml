/// @description Get Selected option
num = -1;

with (obj_roulette_pointer) {
	inst = instance_place(x, y, obj_roulette_option);
	if (inst != noone) {
			other.num = inst.value;
	}
}

show_debug_message(num);
switch (num) {
	// attack
	case 0:	alarm[0] = 60; break;
	// makeup
	case 1: alarm[0] = 300; break;
	// fang
	case 2: alarm[0] = 120; break;
	default: alarm[0] = 30;
}