if(!instance_exists(obj_enemy1)){
	
	if(level < 10)
	{
		repeat(10 * level)
		{
			criar_inimigo();
		}
	}
	else
	{
		if(!chefe_criado)
		{
			layer_sequence_create("Boss_entrada", 960, 512, sq_boss_entrada);
			chefe_criado = true;
		}
		
	}
		
}



alarm[0] = room_speed*5;