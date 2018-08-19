/// @description Insert description here
if (player_hp < max_hp) {
	player_hp++;
	alarm[0] = rechargeCD;
} else {
	recharging = false;
	roulette = instance_find(obj_roulette_controller,0);
	roulette.alarm[0] = 2;
	roulette.recharging = false;
}
