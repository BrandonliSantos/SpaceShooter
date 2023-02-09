/// @description Insert description here
// You can write your code in this editor

if(estado_atual != 4)
{
	if(vida_atual > 0)
	vida_atual--;

	else
		instance_destroy(id);
	

	instance_destroy(other.id);
}


