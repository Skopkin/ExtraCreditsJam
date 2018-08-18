if(keyboard_check_pressed(ord("H")) and state == "Idle"){
	state = "Hurt";
	alarm[0] = hurt_duration;
}

if(keyboard_check_pressed(ord("T")) and state == "Idle"){
	state = "Attack";
	
	alarm[0] = attack_duration;
	camera_shake(view_camera[0],15,5,false,0,true,2);
}

if(keyboard_check_pressed(ord("M")) and state == "Idle"){
	instance_create_layer(0,0,"Curtain",obj_curtain);
	state = "Makeup";
}



switch(state){
	case "Idle":
		sprite_index = spr_blob_idle;
		break;
		
	case "Hurt":
		sprite_index = spr_blob_hurt;
		break;
	
	case "Attack":
		sprite_index = spr_blob_attack;
		break;
	
	case "Makeup":
		//check if a curtain exists. 
		if(instance_exists(obj_curtain)){
			//use it's current state to assign correct sprite
			var curtain = instance_find(obj_curtain, 0);
			if(curtain.state == "Opening"){
				sprite_index = spr_blob_makeup;
			} else if(curtain.state = "Raising"){
				sprite_index = spr_blob_idle;
			}
		}else{
			//once curtain is destroyed, go back to idle
			state = "Idle";
		}
	
		
		break;
}