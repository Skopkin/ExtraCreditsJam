var controller = obj_enemy_controller;

controller.current_enemy ++;
instance_create_layer(start_x,start_y,"Instances", controller.enemy[controller.current_enemy]);