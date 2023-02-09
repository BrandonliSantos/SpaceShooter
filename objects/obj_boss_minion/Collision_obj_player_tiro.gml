/// @description Insert description here
// You can write your code in this editor


if(vida <= 0)
	instance_destroy(id);

else{
	image_alpha -= .08;
	aumento_escala *= 1.1;
	vida--;	
}


instance_destroy(other);