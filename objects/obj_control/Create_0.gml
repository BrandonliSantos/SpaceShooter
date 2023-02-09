//randomizando
randomize();

//iniciando alarm de spawn de inimigos
alarm[0] = room_speed;

gameover_seq = noone;

//sistema de pontos
pontos = 0;

//sistema de level
level = 1;

proximo_level = 100;

chefe_criado = false;

fim_jogo = false;

//ganhando pontos

///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * level;
	
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
	
	//aumentando o limite com base no level atual
	var spawnPosY = irandom_range(-320, -1568 - (level * 500));
	var inimigo = obj_enemy1;
	var probabilidade = random_range(0, level);

	if(probabilidade > 2)
		inimigo = obj_enemy2;
	
	
	instance_create_layer(spawnPosX, spawnPosY, "inimigos", inimigo);
	
}