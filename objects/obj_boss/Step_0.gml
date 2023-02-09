/// @description Insert description here
// You can write your code in this editor

if(estado_atual != 4)
	sprite_index = spr_boss_combate;

if(keyboard_check_pressed(vk_enter))
	vida_atual -= 10;


if(alarm[1] == -1)
{
	alterarEstado();
}

show_debug_message(string("estado: {0}", estado_atual));

switch(estado_atual){
	case 1:
		estado1();
	break;
	
	case 2:
		estado2();
	break;
	
	case 3:
		estado3();
	break;
	
	case 4:
		estado4();
	break;
}