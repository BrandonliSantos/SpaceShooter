draw_text(20,20,pontos);

draw_text(20, 40, "level " + string(level));

//Atributos Player
var velocidade, cooldown, tiro;

if(instance_exists(obj_player))
{
	velocidade = obj_player.velocidade;
	cooldown = obj_player.cooldown / 60;
	tiro = obj_player.level_tiro;
	


	draw_text(20,80, "Velocidade: " + string(velocidade));
	draw_text(20,100, "Velocidade de Disparo: " + string(cooldown));
	draw_text(20,120, "Level do Tiro: " + string(tiro));
}