switch(state){
	case "Idle":
	#region Idle
		sprite_index = en_idle_sprite;
		#endregion
		break;
		
	case "Hurt":
	#region Hurt
		sprite_index = en_hurt_sprite;
		#endregion
		break;
	
	case "Attack":
	#region Attack
		sprite_index = en_attack_sprite;
		#endregion
		break;
	
	case "Makeup":
	#region Makeup State
		//check if a curtain exists. 
		if(instance_exists(obj_curtain)){
			//use it's current state to assign correct sprite
			var curtain = instance_find(obj_curtain, 0);
			if(curtain.state == "Opening"){
				sprite_index = en_makeup_sprite;
			} else if(curtain.state = "Raising"){
				sprite_index = en_idle_sprite;
			}
		}else{
			//once curtain is destroyed, go back to idle
			state = "Idle";
		}
		
		#endregion
		break;
}