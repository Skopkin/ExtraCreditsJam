//if (instance_number(obj_roulette_option) < 4) { 
	// Create the next slot item in the array
	with (instance_create_layer(x+(sprite_width/2)-32, y, "Roulette", rouletteArray[index])) {
		// If roulette is spinning, apply default speed to the item
		// If roulette is slowing down, apply the current slowed down speed
		// If roulette is stopped, set item speed to 0
		if (other.spinning) {
			currentSpeed = other.spinSpeed;
		} else if (other.slowing) {
			currentSpeed = other.currentSpeed;
		} else if (other.stopped) {
			currentSpeed = 0;
		}
	}

	// Move on to the next slot item in the array. Loop back to beginning if necessary
	index++;
	if (index > array_length_1d(rouletteArray)-1) {
		index = 0;
	}
//}

// Reset this alarm
alarm[0] = spawnRate;