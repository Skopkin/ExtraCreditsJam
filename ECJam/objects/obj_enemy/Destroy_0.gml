var controller = obj_enemy_controller;
var enemy_count = array_length_1d(controller.enemy);


if(controller.current_enemy < enemy_count -1){
	controller.current_enemy ++;
	instance_create_layer(start_x,start_y,"Instances", controller.enemy[controller.current_enemy]);
} else{
	gameover(true);
}