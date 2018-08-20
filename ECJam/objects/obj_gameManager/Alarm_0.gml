/// @description Insert description here
if (player_hp < max_hp) {
	player_hp++;
	audio_play_sound(snd_player_heal, 8, false);
	alarm[0] = rechargeCD;
} else {
	recharging = false;
	roulette = instance_find(obj_roulette_controller,0);
	roulette.alarm[0] = 2;
	roulette.recharging = false;
}
