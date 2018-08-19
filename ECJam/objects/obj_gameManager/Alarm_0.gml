/// @description Insert description here
if (player_hp < max_hp) {
	show_debug_message("Health gained");
	player_hp++;
	alarm[0] = rechargeCD;
} else {
	show_debug_message("Fully restored");
	recharging = false;
	roulette = instance_find(obj_roulette_controller,0);
	roulette.alarm[0] = 2;
	roulette.recharging = false;
}
