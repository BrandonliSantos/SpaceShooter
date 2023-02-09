/// @description Vida + escudo do player

var altura_gui = display_get_gui_height();

for(i=0;i<=vida;i++)
{	
	draw_sprite_ext(spr_player, 0, 40 + 40 * i, altura_gui - 40,
	0.3, 0.3, 0,
	c_white, .3);
}

for(i=0;i<=escudos_disponiveis - 1;i++)
{	
	draw_sprite_ext(spr_escudo, 2, 40 + 40 * i, altura_gui - 80,
	0.3, 0.3, 0,
	c_white, .3);
}

