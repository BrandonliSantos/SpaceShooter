/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed;

image_alpha = 0;

escala = 1;
aumento_escala = .01;
vida = 10;

primeiro_tiro = false;


if(place_meeting(x, y, obj_boss_minion))
	y -= 128;