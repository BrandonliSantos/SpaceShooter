//tiro sair fora da tela
if(y > 1220)
	instance_destroy(id, false);
	
	
// animação do sprite
image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);
