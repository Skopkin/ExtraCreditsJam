en_idle_sprite = spr_en_idle_default;
en_hurt_sprite = spr_en_hurt_default;
en_attack_sprite = spr_en_attack_default;
en_makeup_sprite = spr_en_makeup_default;

state = "Idle";
hurt_duration = 60;
attack_duration = 15;

hp = 4;

swipe_spd = 8;

// has to be less than 1
fade_speed = .05;

/// animating the entrance
start_y = 416;
start_x = room_width/3 * 2;
target_x = 480;
image_alpha = 0;

hurt_shake = false;