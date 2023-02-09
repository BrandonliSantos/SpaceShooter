/// @description Insert description here
// You can write your code in this editor
var str_max_pontos = string("MAIOR PONTUACAO: {0}", round(pontos));
var str_inimigos_mortos = string("INIMIGOS MORTOS: {0}", global.total_inimigos);
var str_total_mortes = string("TOTAL DE MORTES: {0}", global.total_mortes);


draw_set_font(fnt_botoes);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_text(room_width / 2, room_height / 2 - 100, str_max_pontos);
draw_text(room_width / 2, room_height / 2, str_inimigos_mortos);
draw_text(room_width / 2, room_height / 2 + 100, str_total_mortes);
	
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
