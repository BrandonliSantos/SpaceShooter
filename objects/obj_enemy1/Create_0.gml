vspeed += 3;

pontos = 10;

chance = 20; // porcentagem

alarm[0] = random_range(1,3) * room_speed;

//checando colisao com o inimigo
if(place_meeting(x,y,obj_enemy1))
	instance_destroy(id,false);

atirando = function()
{
	if(y >= 0 && y <= room_height)
	instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro1);

	alarm[0] = random_range(1,3) * room_speed;
}


///@method dropa_item(chance_de_dropar_em_porcentagem)
function dropa_item(_chance)
{
	var valor = random(100);
	
	if(valor < _chance && y > 96)
	{
		instance_create_layer(x,y,"Tiros",obj_powerup);
	}
}