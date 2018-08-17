/// @arg current_value
/// @arg target_value
/// @arg change_amount

var current_value = argument0;
var target_value = argument1;
var change_amount = argument2;

if(current_value < target_value){ // if we need increase a value
	
	current_value += change_amount; // increment by change amount
	current_value = min(current_value,target_value);// in case of overshoot, return the target value
	
}else{ // if we need to decrease a value
	current_value -= change_amount; // decrement by change amount
	current_value = max(current_value,target_value); //in case of overshoot, return target value
}

return current_value;