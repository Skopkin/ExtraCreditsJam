if(room != target_room){
	alpha += fade_speed;
	if(alpha >= 1){
		room_goto(target_room);
		}
}else{
	alpha -= fade_speed;
	if(alpha <= 0){
		instance_destroy();
	}
}


draw_set_alpha(alpha);
draw_rectangle_color(0,0,gui_Width,gui_Height,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);