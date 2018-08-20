draw_rectangle_color(0,0,room_width,room_height, c_black,c_black,c_black,c_black,false);
draw_sprite(spr_tutorial, 0, 0, view_hport[0]/2);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/3 * 2 + 100, "Press Enter/Space to Start");