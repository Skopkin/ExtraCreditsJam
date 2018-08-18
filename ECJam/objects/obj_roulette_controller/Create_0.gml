// Fill array with slot items
rouletteArray[0] = obj_attack;
rouletteArray[1] = obj_makeup;
rouletteArray[2] = obj_fang;
rouletteArray[3] = obj_attack;
rouletteArray[4] = obj_makeup;
sprWidth = 174;
// Toggles for the spinning, slowing, and stopped states of the roulette
spinning = true;
slowing = false;
stopped = false;
spawn = false;

// Default spin speed, current speed, and slowing decrement
spinSpeed = 10;
currentSpeed = spinSpeed;
slowSpeed = 0.1;

event_user(0);