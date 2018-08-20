/// @description Reset button sprite
if (button.sprite_index == button.sprPressedPlay) {
	show_debug_message("test");
	button.sprite_index = button.sprReadyPlay;
} else {
	button.sprite_index = button.sprReady;
}
