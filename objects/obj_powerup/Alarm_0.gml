/// @description Insert description here

//diminuir o alpha em 10%
image_alpha -= .1;

//me destruindo se meu aplha for menor ou igual a .5
if(image_alpha <= 0)
	instance_destroy(id, false);
//Repetir o alarme em 1 segundo
alarm[0] = room_speed;
