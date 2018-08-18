// Fill array with slot items
rouletteArray[0] = obj_red;
rouletteArray[1] = obj_blue;
rouletteArray[2] = obj_yellow;
rouletteArray[3] = obj_red;
rouletteArray[4] = obj_blue;
rouletteArray[5] = obj_green;
sprWidth = 64;
// Toggles for the spinning, slowing, and stopped states of the roulette
spinning = true;
slowing = false;
stopped = false;
spawn = false;

// Default spin speed, current speed, and slowing decrement
spinSpeed = 4;
currentSpeed = spinSpeed;
slowSpeed = 0.1;

event_user(0);