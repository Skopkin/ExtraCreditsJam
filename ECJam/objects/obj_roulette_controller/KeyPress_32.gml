if (spinning && ready) {
	spinning = false;
	slowing = true;
	button.sprite_index = button.sprPressed;
} else if (stopped && ready) {
	stopped = false;
	spinning = true;
	event_user(0);
	button.sprite_index = button.sprPressed;
}