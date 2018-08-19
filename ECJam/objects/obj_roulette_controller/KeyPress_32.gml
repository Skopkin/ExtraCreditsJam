if (spinning && ready) {
	spinning = false;
	slowing = true;
	ready = false;
	button.sprite_index = button.sprPressed;
	audio_play_sound(snd_button, 8, false);
	alarm[2] = 30;
} else if (stopped && ready) {
	stopped = false;
	spinning = true;
	event_user(0);
	button.sprite_index = button.sprPressed;
	audio_play_sound(snd_button, 8, false);
	alarm[2] = 30;
}