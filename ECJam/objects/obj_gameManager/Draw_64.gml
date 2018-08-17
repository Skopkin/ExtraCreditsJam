draw_set_halign(fa_center);

if (paused) {
	// Draw screen shot sprite
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	//Draw menu text
	draw_text(view_width*5,view_height*4,"PAUSED");
	for (var i = 0; i < buttons; i++) {
		draw_set_color(normal_text);
		// Set currently optionected menu option to highlighted color;
		if (menu_index == i) {
			draw_set_color(highlighted_text);	
		}
		// Draw menu button
		draw_text(menu_x, menu_y+button_h*i, button[i]);
	}
	
}