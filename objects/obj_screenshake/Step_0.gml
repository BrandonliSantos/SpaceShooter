//tremendo a tela na horizontal
view_xport[0] = random_range(-shake, shake);

//tremendo a tela na vertical
view_yport[0] = random_range(-shake, shake);

shake *= .9;

if(shake < .5)
	instance_destroy();