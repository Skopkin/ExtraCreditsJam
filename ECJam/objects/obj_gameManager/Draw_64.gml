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

hp_percent = (player_hp/max_hp)*100;
draw_healthbar(hp_bar_x-32, hp_bar_y-100, hp_bar_x+35, hp_bar_y+109,hp_percent,c_black,c_red,c_red,3,true,false);
draw_sprite(spr_player_health_bar,-1,hp_bar_x, hp_bar_y);