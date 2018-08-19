/// @description reset slots
ready = false;
if (instance_number(obj_roulette_option) > 0) {
	num = instance_number(obj_roulette_option);
	for(i = 0; i < num; i++) {
		instance_destroy(instance_find(obj_roulette_option, 0));	
	}
}
// Current index in the array, frequency of slot item creation, and set spawning alarm
index = 0;
instance_create_layer(x+360-sprWidth*3, y+9, "Roulette", rouletteArray[index]);
index++;
instance_create_layer(x+360-sprWidth*2, y+9, "Roulette", rouletteArray[index]);
index++;
instance_create_layer(x+360-sprWidth, y+9, "Roulette", rouletteArray[index]);
index++;
instance_create_layer(x+360, y+9, "Roulette", rouletteArray[index]);
index++;

alarm[0] = 90;

audio_sound_gain(snd_music_roulette, 1, 1);