if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);
//if(my_enemy.state == "Idle"){
	my_enemy.state = "Attack";	
	my_enemy.alarm[1] = my_enemy.attack_duration;
	camera_shake(view_camera[0],15,5,false,0,true,2);
	manager = instance_find(obj_gameManager,0)
	manager.player_hp--;
//}