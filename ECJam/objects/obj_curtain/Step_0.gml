

switch(state){
	
	case "Falling":
	#region Curtain Coming Down
		y += speed_;
		if(y >= target_y){
				// set alarm for how long it stays at bottom
			alarm[0] = 60;
				//change state to change to open sprite
			state = "Opening";
		}
	#endregion
		break;
	
	case "Opening": // just do nothing. wait.
		image_index = 1;
		break;
		
	case "Raising":
	#region	 Curtain Going Up
			//close curtain, move up, remove makeup and destroy self
		y -= speed_;
		image_index = 0;
		if(y <= 0){
			instance_destroy();
			
		}
		#endregion
		break;
}

