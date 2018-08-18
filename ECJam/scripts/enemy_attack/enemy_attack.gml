if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);
if(my_enemy.state == "Idle"){
	my_enemy.state = "Attack";	
	my_enemy.alarm[0] = my_enemy.attack_duration;
	camera_shake(view_camera[0],15,5,false,0,true,2);
	//decrement player health ****
}