if (spinning) {
	spinning = false;
	slowing = true;
	slowTimeStart = alarm[0];
} else if (stopped) {
	stopped = false;
	spinning = true;
	alarm[0] = slowTimeEnd;
}