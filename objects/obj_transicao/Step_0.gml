/// @description Insert description here
// You can write your code in this editor

if(!trocou_room)
	alpha += .02;
	
else{
	if(alpha <= 0)
		instance_destroy(id);
	
	alpha -= .02;
}
	
if(alpha >= 1 && !trocou_room)
{
	room_goto(destino);
	trocou_room = true;
}

