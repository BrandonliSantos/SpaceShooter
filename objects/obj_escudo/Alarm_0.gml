/// @description Escudo desaparecendo
if(image_index != 0)
{
	image_index --;
	image_alpha -= .2
}

else{
	audio_play_sound(sfx_shieldDown, 1, false);
	instance_destroy();
}

alarm[0] = room_speed * 2;


