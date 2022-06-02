var cima, baixo, direita, esquerda;
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));

y += (baixo - cima) * velocidade;
x += (direita - esquerda) * velocidade;

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
