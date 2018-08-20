if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);

//if(my_enemy.state == "Idle" or my_enemy.state == "Block"){
	instance_create_layer(0,0,"Curtain",obj_curtain);
	my_enemy.state = "Makeup";
//}