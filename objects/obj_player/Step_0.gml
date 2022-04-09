var cima, baixo, direita, esquerda;
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));

y += (baixo - cima) * velocidade;
x += (direita - esquerda) * velocidade;

atirando();


