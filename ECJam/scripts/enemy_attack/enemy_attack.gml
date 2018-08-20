if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);
if(my_enemy.state != "Block"){
	my_enemy.state = "Attack";	
	my_enemy.alarm[1] = my_enemy.attack_duration;
	player_hurt();
	if (my_enemy.object_index == obj_wizard) {
		roulette = instance_find(obj_roulette_controller,0);
		if (!roulette.debuffed) {
			roulette.rouletteArray[1] = obj_hurt_self;
			roulette.rouletteArray[3] = obj_hurt_self;
			roulette.debuffed = true;
			audio_play_sound(snd_wizard_attack, 7, false);
		}
	}
}