//iniciando alarm de spawn de inimigos
alarm[0] = room_speed;

//sistema de pontos
pontos = 0;

//sistema de level
level = 1;

proximo_level = 100;

//ganhando pontos

///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos;
	
	if(pontos > proximo_level)
	{
		level++;
		proximo_level *= 2;
	}
}

//spawn de inimigos
criar_inimigo = function()
{
	var spawnPosX = irandom_range(150, room_width-150);
	var spawnPosY = irandom_range(-320, -1568);
	var inimigo = obj_enemy1;
	var probabilidade = random_range(0, level);

	if(probabilidade > 2)
		inimigo = obj_enemy2;
	
	
	instance_create_layer(spawnPosX, spawnPosY, "inimigos", inimigo);
	
}