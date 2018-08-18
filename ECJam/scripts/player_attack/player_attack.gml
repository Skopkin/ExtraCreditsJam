/// @arg attack_type

atk_type = argument0;

var fang_damage = 2;
var attack_damage = 4;

if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);

switch (atk_type) {
	case 0: 
		my_enemy.hp -= attack_damage;
		break;
	case 2: 
		my_enemy.hp -= fang_damage;
		break;
	default: show_debug_message("oh fuck");
}

if(my_enemy.state == "Idle"){
	my_enemy.state = "Hurt";
	my_enemy.alarm[0] = my_enemy.hurt_duration;
}