camera_shake(view_camera[0],15,5,false,0,true,2);
manager = instance_find(obj_gameManager,0)
manager.player_hp--;
if (manager.player_hp > 0) {
	audio_play_sound(snd_player_hurt, 8, false);
} else {
	audio_play_sound(snd_roulette_break, 8, false);
}