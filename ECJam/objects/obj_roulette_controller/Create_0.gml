// Fill array with slot items
rouletteArray[0] = obj_red;
rouletteArray[1] = obj_blue;
rouletteArray[2] = obj_yellow;
rouletteArray[3] = obj_red;
rouletteArray[4] = obj_blue;
rouletteArray[5] = obj_green;

// Toggles for the spinning, slowing, and stopped states of the roulette
spinning = true;
slowing = false;
stopped = false;

// Default spin speed, current speed, and slowing decrement
spinSpeed = 4;
currentSpeed = spinSpeed;
slowSpeed = 0.1;

// Current index in the array, frequency of slot item creation, and set spawning alarm
index = 0;
spawnRate = 64/spinSpeed;
alarm[0] = spawnRate;
slowTimeStart = 0;
slowTimeEnd = 0;