// Fill array with slot items
rouletteArray[0] = obj_attack;
rouletteArray[1] = obj_makeup;
rouletteArray[2] = obj_fang;
rouletteArray[3] = obj_attack;
rouletteArray[4] = obj_makeup;
sprWidth = 174;
//image_alpha = 0;
// Toggles for the spinning, slowing, and stopped states of the roulette
spinning = true;
slowing = false;
stopped = false;
ready = false;
//spawn = false;

// Default spin speed, current speed, and slowing decrement
spinSpeed = 10;
currentSpeed = spinSpeed;
slowSpeed = 0.2;

instance_create_layer(x, y-sprite_height*.25, "Roulette", obj_roulette_pointer);
button = instance_create_layer(x-sprite_width*.38, y-sprite_height*.1, "Roulette", obj_button);
button.depth = -10;
event_user(0);