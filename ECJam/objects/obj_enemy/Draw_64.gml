/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_healthbar(hp_distance-16, y-60, hp_distance+16, y+72, hp_percent,c_black,hp_color,hp_color,3,true,false);
draw_sprite(spr_enemy_health_bar, -1, hp_distance, y);
draw_set_alpha(1);