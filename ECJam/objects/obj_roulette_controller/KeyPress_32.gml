if (spinning && ready) {
	spinning = false;
	slowing = true;
	ready = false;
	button.sprite_index = button.sprPressed;
	//button.image_blend = c_gray;
	alarm[2] = 30;
} else if (stopped && ready) {
	stopped = false;
	spinning = true;
	event_user(0);
	button.sprite_index = button.sprPressed;
	//button.image_blend = c_gray;
	alarm[2] = 30;
}