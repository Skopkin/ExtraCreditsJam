/// @description Enemy attack phase
currentEnemy = instance_find(obj_enemy, 0)
if (currentEnemy.state != "Makeup") {
	enemy_attack();
	alarm[0] = 60;
} else {
	alarm[0] = 15;	
}