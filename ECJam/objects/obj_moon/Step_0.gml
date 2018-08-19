if(path_position >= .98){
	gameover(false);
}

if(path_position >= .80 and !sun_created){
	instance_create_layer(0,0,"Moon_Instance",obj_sun);
}