/// @arg attack_type

atk_type = argument0;

var fang_damage = 2;
var attack_damage = 4;

if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);

switch (atk_type) {
	case 0:
		if(my_enemy.state == "Block"){
			audio_play_sound(snd_block,6,false);
		} else {
			my_enemy.hp -= attack_damage;
			audio_play_sound(snd_sword,8,false);
		}
		instance_create_layer(0,0,"Roulette",obj_sword_attack);
		break;
	case 2:
		if(my_enemy.state == "Block"){
			audio_play_sound(snd_block,2,false);
		} else {
			my_enemy.hp -= fang_damage;
			audio_play_sound(snd_bite,8,false);
			manager = instance_find(obj_gameManager,0);
			if (manager.player_hp < manager.max_hp) {
				manager.player_hp++;	
			}
		}
		instance_create_layer(0,0,"Roulette",obj_bite_attack);
		break;
	default: show_debug_message("oh fuck");
}

if(my_enemy.state == "Idle"){
	my_enemy.alarm[0] = my_enemy.hurt_duration;
	my_enemy.alarm[2] = 10;
}