var controller = obj_enemy_controller;

controller.current_enemy ++;
instance_create_layer(room_width/2,room_height/2,"Instances", controller.enemy[controller.current_enemy]);