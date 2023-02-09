/// @description Insert description here
// You can write your code in this editor

/*
	Estado 1 = Parado dando tiro 2
	Estado 2 = Movendo dando o tiro 1
	Estado 3 = Parado intercalando entre tiro 1 e 2
	
	Estado 4:
	Estado Especial = Ficar ivulneravel enquanto cria dois minions para recuperar vida
*/

cooldown = room_speed / 2;

vida_max = 1500;
vida_atual = vida_max;

velocidade = 5;

pode_criar_minion = true;

delay_estado = room_speed * 10;

alarm[1] = delay_estado;

estado_atual = choose(1, 2, 3);

espera_tiro = room_speed;

movendo_para_direita = true;


function alterarEstado()
{
	var escolha = 0;
	
	if(vida_atual <= vida_max / 2)
		escolha = choose(1, 2, 3, 4);
		
	else
		escolha = choose(1, 2, 3);
	
	if(escolha == estado_atual)
	{
		alterarEstado();
		return;
	}
			
	estado_atual = escolha;
	pode_criar_minion = true;
	alarm[1] = delay_estado;
}


function estado1()
{
	if(alarm[2] == -1){
		instance_create_layer(x, y + sprite_height/4, "Tiros", obj_tiro2);
		alarm[2] = cooldown;
	}
}

function estado2()
{
	if(alarm[0] == -1){
		instance_create_layer(x + 160, y + 10, "Tiros", obj_tiro1);
		instance_create_layer(x - 160, y + 10, "Tiros", obj_tiro1);
		alarm[0] = cooldown;
	}
	
	if(movendo_para_direita)
	{
		if(x >= room_width - sprite_width / 2)
		{
			movendo_para_direita = false;
			return;
		}
		
		x += velocidade;
	}
	
	else
	{
		if(x <= sprite_width / 2)
		{
			movendo_para_direita = true;
			return;
		}
		
		x -= velocidade;
	}
	
	
}

function estado3()
{
	
	espera_tiro--;
	
	if(espera_tiro <= 0)
		espera_tiro = cooldown * 2;
	
	if(espera_tiro == cooldown)
		instance_create_layer(x - 160, y + 10, "Tiros", obj_tiro1);
	
	if(espera_tiro == cooldown + round(cooldown / 2))
		instance_create_layer(x + 160, y + 10, "Tiros", obj_tiro1);
	
	if(alarm[2] == -1)
	{
		instance_create_layer(x, y + sprite_height/4, "Tiros", obj_tiro2);
		alarm[2] = cooldown * 2;
	}
}

function estado4()
{
	sprite_index = spr_boss_escuro;
	
	//Indo para o centro da tela

	x += sign(room_width / 2 - x);
	
	if(pode_criar_minion)
	{

		var _minion = instance_create_layer(128, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 90;
	
		_minion = instance_create_layer(1760, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 270;
			
		pode_criar_minion = false;
		
	}
	
}