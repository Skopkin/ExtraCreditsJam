

switch(state){
	
	case "Falling":
	#region Curtain Coming Down
		y += speed_;
		if(y >= target_y){
				// set alarm for how long it stays at bottom
			alarm[0] = 75;
				//change state to change to open sprite
			state = "Opening";
		}
		if(!audio_is_playing(snd_curtain_open)){
			audio_play_sound(snd_curtain_open, 8, true);
		}
	#endregion
		break;
	case "Opening": // just do nothing. wait.
	#region Curtain Open
		audio_stop_sound(snd_curtain_open);
		if (image_index == 0 && alarm[1] == -1) {
			alarm[1] = 15;	
		}
		#endregion
		break;
	case "Raising":
	#region	 Curtain Going Up
			//close curtain, move up, remove makeup and destroy self
		if(!audio_is_playing(snd_curtain_open)){
			audio_play_sound(snd_curtain_open, 8, true);
		}
		y -= speed_;
		if(y <= 0){
			instance_destroy();
			audio_stop_sound(snd_curtain_open);
		}
		#endregion
		break;
}


