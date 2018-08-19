//correct x position to start from
xpos  = room_width/2 - 25;
x = xpos;

//just in case we want to start at different y
start_y = 0;
y = start_y;
//makes it go to the top of the roulette wheel
target_y = (room_height - spr_roulette.sprite_height*3);
show_debug_message(target_y);

//vertical movement
speed_ = 5;


state = "Falling";

//current instance of the enemy in the room
my_enemy = instance_find(obj_enemy,0);