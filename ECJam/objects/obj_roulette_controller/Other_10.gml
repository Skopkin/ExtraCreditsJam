/// @description reset slots
if (instance_number(obj_roulette_option) > 0) {
	num = instance_number(obj_roulette_option);
	for(i = 0; i < num; i++) {
		instance_destroy(instance_find(obj_roulette_option, 0));	
	}
}
// Current index in the array, frequency of slot item creation, and set spawning alarm
index = 0;
instance_create_layer(x+(sprite_width/2)-sprWidth*3.5, y, "Roulette", rouletteArray[index]);
index++;
instance_create_layer(x+(sprite_width/2)-sprWidth*2.5, y, "Roulette", rouletteArray[index]);
index++;
instance_create_layer(x+(sprite_width/2)-sprWidth*1.5, y, "Roulette", rouletteArray[index]);
index++;
instance_create_layer(x+(sprite_width/2)-sprWidth/2, y, "Roulette", rouletteArray[index]);
index++;