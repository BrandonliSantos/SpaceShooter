/*
	Atributos:
		velocidade - aumenta 0.5 - Max: 10 vezes | chance drop: 45%
		cooldown - diminui 0.1 - Max: 11 vezes   | chance drop: 45%
		level tiro - aumenta 1 - Max: 5 vezes    | chance drop: 10%
*/

velocidade = 5;

cooldown = room_speed;

level_tiro = 1;

//sistema de vida
vida = 3;

meu_escudo = noone;

//sistema de escudo
escudos_disponiveis = 3;


atirando = function()
{
	y_tiro = y - sprite_height/3;

	tiro2 = function()
	{
		var tiro_esq = instance_create_layer(x - 60, y_tiro, "Tiros", obj_player_tiro2);
		tiro_esq.hspeed = -4;
		var tiro_dir = instance_create_layer(x + 60, y_tiro, "Tiros", obj_player_tiro2);
		tiro_dir.hspeed = 4;
	}
	
	tiro4 = function()
	{
		var _direction = 75;
		repeat(3)
		{
			var tiro = instance_create_layer(x, y_tiro, "Tiros", obj_player_tiro);
			tiro.direction = _direction;
			tiro.image_angle = tiro.direction - 90;
			
			_direction += 15;
			
		}
	}
	if(keyboard_check(vk_space) && alarm[0] == -1)
	{
		alarm[0] = cooldown;
		if(level_tiro == 1)
		{
			instance_create_layer(x, y_tiro, "Tiros", obj_player_tiro);
		}
		
		else if(level_tiro == 2)
		{
			tiro2();
		}
		
		else if(level_tiro == 3)
		{
			instance_create_layer(x, y_tiro, "Tiros", obj_player_tiro);
			tiro2();
		}
		
		else if(level_tiro == 4)
		{
			tiro4();
		}
		
		else if(level_tiro == 5)
		{
			tiro2();
			tiro4();
		}

	}
	
}

powerUP = function(porcentagem)
{
	aumentarVelocidade = function()
	{
		if(velocidade < 10)
			velocidade += 0.5;
			
		else
			ganhar_pontos(10);
	}
	
	diminuirCooldown = function()
	{
		if(cooldown > 18.83)
			cooldown -= cooldown * 0.1;
			
		else
			ganhar_pontos(10);
	}
	
	aumentarLevelTiro = function()
	{
		if(level_tiro < 5)
			level_tiro++;
			
		else
			ganhar_pontos(100);
			
	}
	
	
	if(porcentagem >= 90)
		aumentarLevelTiro();
		
	else if(porcentagem >= 45)
		aumentarVelocidade();
	
	else
		diminuirCooldown();
		
}

///@method perde_vida();
function perde_vida()
{
	if(!meu_escudo)
	{
		if(vida > 0){
			vida --;
			screenshake(5);
		}
		
	
		else{
			instance_destroy(id);
			screenshake(20);
		}	
	}
		
}



