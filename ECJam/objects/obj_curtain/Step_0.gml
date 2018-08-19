

switch(state){
	
	case "Falling":
	#region Curtain Coming Down
		y += speed_;
		if(y >= target_y){
				// set alarm for how long it stays at bottom
			show_debug_message(y);
			alarm[0] = 75;
				//change state to change to open sprite
			state = "Opening";
		}
	#endregion
		break;
	
	case "Opening": // just do nothing. wait.
		if (image_index == 0 && alarm[1] == -1) {
			alarm[1] = 15;	
		}
		break;
		
	case "Raising":
	#region	 Curtain Going Up
			//close curtain, move up, remove makeup and destroy self
		y -= speed_;
		if(y <= 0){
			instance_destroy();
			
		}
		#endregion
		break;
}


