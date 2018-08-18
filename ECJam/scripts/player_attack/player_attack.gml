if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);

if(my_enemy.state == "Idle"){
	my_enemy.state = "Hurt";
	my_enemy.alarm[0] = my_enemy.hurt_duration;
	//decrement enemy health ****
}