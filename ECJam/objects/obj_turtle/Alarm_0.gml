/// @description Hurt Alarm

block_counter ++;
if(block_counter == 2){
	state = "Block";
	block_counter = 0;
}	else{
	state = "Idle";
}

//show_debug_message(string(block_counter) + " BLOCK COUNT");