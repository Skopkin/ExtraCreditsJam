show_debug_message(instance_number(obj_roulette_option));
// If roulette is spinning, maintain default speed
// If roulette is slowing down, decrement current speed by slow amount
// If speed has reached 0, enter the stopped state and halt the spawning alarm
if (spinning) {
	currentSpeed = spinSpeed
} else if (slowing && currentSpeed > 0) {
	currentSpeed -= slowSpeed;
} else if (currentSpeed <= 0 && stopped = false) {
	slowing = false;
	stopped = true;
	slowTimeEnd = alarm[0];
	alarm[0] = -1;
}

// Apply the current speed to all existing slot items
for (i = 0; i < instance_number(obj_roulette_option); i++) {
	slot = instance_find(obj_roulette_option, i);
	slot.currentSpeed = currentSpeed;
}
