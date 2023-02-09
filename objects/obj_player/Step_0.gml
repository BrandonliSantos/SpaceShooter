var cima, baixo, direita, esquerda, escudo;
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
escudo = keyboard_check_pressed(ord("E"));



y += (baixo - cima) * velocidade;
x += (direita - esquerda) * velocidade;

//travar o jogador ao tentar sair da tela
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);



atirando();

//debug
if(keyboard_check_pressed(vk_up))
	level_tiro++;
	
if(keyboard_check_pressed(vk_down))
	level_tiro--;
	
show_debug_message(level_tiro);


if(keyboard_check_pressed(vk_left))
	cooldown = cooldown - (cooldown*0.1);
	
	if(keyboard_check_pressed(vk_right))
	cooldown = cooldown + (cooldown*0.1);




//criando escudo ao apertar E
if(escudo && escudos_disponiveis > 0 && !meu_escudo)
{
	var objEscudo = instance_create_layer(x,y,"Escudo",obj_escudo);
	objEscudo.alvo = id;
	meu_escudo = objEscudo.id;
	escudos_disponiveis --;
}


