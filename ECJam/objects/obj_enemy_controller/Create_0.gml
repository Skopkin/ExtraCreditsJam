current_enemy = 0;

// put order of enemy encounters here
enemy[0] = obj_blob;
enemy[1] = obj_wizard;

//spawn the first enemy
instance_create_layer((room_width/3)*2, 416,"Instances", enemy[0]);

