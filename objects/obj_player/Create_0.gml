velocidade = 5;

atirando = function()
{
	var tiro = keyboard_check(vk_space);
	if(tiro)
	{
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_player_tiro);
	}
}
