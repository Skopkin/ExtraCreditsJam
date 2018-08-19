draw_set_halign(fa_center);

if(title_falling){// animate the title going up and down
	title_ypos = approach(title_ypos,title_ystart + title_amplitude, title_speed);
	if (title_ypos >= title_ystart + title_amplitude){
		title_falling = false;
	}
} else{
	title_ypos = approach(title_ypos,title_ystart - title_amplitude, title_speed);
	if (title_ypos <= title_ystart - title_amplitude){
		title_falling = true;
	}
}
draw_sprite(spr_title_icon,0,title_xpos,title_ypos);


//drawing the options on main menu
var i = 0;
var y_spacing = 0;
repeat(option_count){
	
	if(i == selected_option){ // draw the current selection a different color and place
		draw_text_color(room_width/2 ,option_ypos_start + y_spacing - selection_yoffset, option[i],c_high,c_high,c_high,c_high,1);
	}else{
	draw_text_color(room_width/2 ,option_ypos_start+ y_spacing, option[i],c_norm,c_norm,c_norm,c_norm,1);
	}

	y_spacing += option_spacing;
	i++;
}


if(in_submenu){ // draw appropriate sub-menu options
	draw_set_alpha(.9);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	/*i = 0;
	y_spacing = 0;
	repeat(controls_count){
		draw_set_halign(fa_center);
		draw_text_color(room_width/2, room_height/2 + y_spacing,controls_[i], c_white,c_white,c_white,c_white,1);
		i ++;
		y_spacing += option_spacing;
	}*/
	draw_text_color(view_wport[0]/2, view_hport[0]*.10, description_text,c_white,c_white,c_white,c_white,1);
	draw_text_color(view_wport[0]/2, view_hport[0]*.80, credits_text,c_white,c_white,c_white,c_white,1);
	draw_sprite(spr_instructions, 0, 0, view_hport[0]/2);
}