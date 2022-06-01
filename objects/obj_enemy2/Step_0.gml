/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var lado = x < room_width / 2 ? "esquerda" : "direita";


if(lado == "esquerda" && y > room_height / 3 && podeMoverLado)
{
	hspeed = 3;
	podeMoverLado = false;
}	
if(lado == "direita" && y > room_height / 3 && podeMoverLado)
{
	hspeed = -3;
	podeMoverLado = false;
}	
	
