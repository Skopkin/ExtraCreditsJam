if(!instance_exists(obj_enemy)){exit;}

my_enemy = instance_find(obj_enemy,0);

if(my_enemy.state == "Idle"){
	instance_create_layer(0,0,"Curtain",obj_curtain);
	state = "Makeup";
}