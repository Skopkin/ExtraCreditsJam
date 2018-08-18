if (spinning) {
	spinning = false;
	slowing = true;
} else if (stopped) {
	stopped = false;
	spinning = true;
	event_user(0);
}