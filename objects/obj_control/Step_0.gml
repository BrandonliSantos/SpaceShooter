if(!instance_exists(obj_player) && !gameover_seq && !fim_jogo)
{	
	audio_play_sound(sfx_lose, 1, false);
	gameover_seq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_gameover);
}