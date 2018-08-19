if(x > target_x){ // coming in
	x -= swipe_spd;
	image_alpha += fade_speed;
}



if(hp <= 0){ // fading out/dying
	x -= swipe_spd;
	image_alpha -= fade_speed;
	image_xscale -= .01;
	image_yscale -= .01;
	if(image_alpha <= 0){
		instance_destroy();
	}
}
switch(state){
	case "Idle":
	#region Idle
		sprite_index = en_idle_sprite;
		#endregion
		break;
		
	case "Hurt":
	#region Hurt
		sprite_index = en_hurt_sprite;
		if(hurt_shake && hp > 0){
			x = target_x + random_range(1,5);
			y = start_y + random_range(-5,0);
		}
		#endregion
		break;
	
	case "Attack":
	#region Attack
		sprite_index = en_attack_sprite;
		x = target_x;
		y = start_y;
		#endregion
		break;
	
	case "Makeup":
	#region Makeup State
		//check if a curtain exists. 
		if(instance_exists(obj_curtain)){
			//use it's current state to assign correct sprite
			var curtain = instance_find(obj_curtain, 0);
			if(curtain.state == "Opening"){
				sprite_index = en_makeup_sprite;
				audio_play_sound(snd_makeover, 8, false);
			} /*else if(curtain.state = "Raising"){
				sprite_index = en_idle_sprite;
			}
		}else{
			//once curtain is destroyed, go back to idle
			state = "Idle";
		*/}
		
		#endregion
		break;
}

hp_percent = (hp/max_hp)*100;
hp_distance = x - sprite_width/2;