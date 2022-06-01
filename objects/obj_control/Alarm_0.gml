if(!instance_exists(obj_enemy1)){
	repeat(10 * level)
	{
		criar_inimigo();
	}
}



alarm[0] = room_speed*5;