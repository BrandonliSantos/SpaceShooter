/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chance = 30;

//variavel de controle
podeMoverLado = true;

pontos = 20;

atirando = function()
{
	if(y >= 0 && y <= room_height)
	{
		instance_create_layer(x - 3, y + sprite_height/3,"Tiros",obj_tiro2);
		audio_play_sound(sfx_laser1, 1, false);
	}
		
	alarm[0] = random_range(1,3) * room_speed;
}