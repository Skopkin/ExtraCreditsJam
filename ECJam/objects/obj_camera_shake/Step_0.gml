

if (shake == true){
	//new random x and y pos
	var ran_x = random_range(-shake_amount, shake_amount);
	var ran_y = random_range(-shake_amount, shake_amount);
	// add the zoom offest if you are zooming camera
	if(zoom_toggle){
		ran_x += zoom_amount/2;
		ran_y += zoom_amount/2;
	}

	// set camera to that pos
	camera_set_view_pos(my_camera, view_pos_x + ran_x, view_pos_y + ran_y);
	
		
	// adjust camera angle					
	if(rotation_toggle){
		var ran_angle = random_range(-rotation_amount, rotation_amount);
		camera_set_view_angle(my_camera,ran_angle);
	}
	
	// zoom in the camera
	if(zoom_toggle){
			camera_set_view_size(my_camera,view_w - zoom_amount, view_h - zoom_amount);
	}
	
	// tapers off shake linearly
	if (shake_amount >= 0){
		shake_amount = approach(shake_amount,0, shake_decay);
	}
	
}


