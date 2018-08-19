if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);
if(my_enemy.state != "Block"){
	my_enemy.state = "Attack";	
	my_enemy.alarm[1] = my_enemy.attack_duration;
	camera_shake(view_camera[0],15,5,false,0,true,2);
	manager = instance_find(obj_gameManager,0)
	manager.player_hp--;
	if (my_enemy.object_index == obj_wizard) {
		roulette = instance_find(obj_roulette_controller,0);
		if (!roulette.debuffed) {
			roulette.rouletteArray[0] = obj_hurt_self;
			roulette.debuffed = true;
			show_debug_message("test");
		}
	}
}