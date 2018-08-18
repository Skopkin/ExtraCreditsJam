/// @description Enemy attack phase
if (currentEnemy = instance_find(obj_enemy, 0)) {
	enemy_attack();
	alarm[0] = 60;
} else {
	alarm[0] = 15;	
}