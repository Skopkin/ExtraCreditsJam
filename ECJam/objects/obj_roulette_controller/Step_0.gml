// If roulette is spinning, maintain default speed
// If roulette is slowing down, decrement current speed by slow amount
// If speed has reached 0, enter the stopped state and halt the spawning alarm
if (spinning) {
	currentSpeed = spinSpeed
} else if (slowing && currentSpeed > 0) {
	currentSpeed -= slowSpeed;
} else if (currentSpeed <= 0 && stopped == false) {
	ready = false;
	slowing = false;
	stopped = true;
	event_user(1);
}

if (spawn) {
	spawn = false;
	// Create the next slot item in the array
	with (instance_create_layer(x+360-currentSpeed, y+9, "Roulette", rouletteArray[index])) {
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
}

// Apply the current speed to all existing slot items
for (i = 0; i < instance_number(obj_roulette_option); i++) {
	slot = instance_find(obj_roulette_option, i);
	slot.currentSpeed = currentSpeed;
}


