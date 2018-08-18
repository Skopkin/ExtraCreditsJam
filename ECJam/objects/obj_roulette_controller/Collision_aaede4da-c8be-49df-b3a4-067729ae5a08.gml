/// @description Move option
with (other) {
	x = other.x + 360;
	instance_change(other.rouletteArray[other.index], true);
}

index++;
if (index > array_length_1d(rouletteArray)-1) {
	index = 0;
}
