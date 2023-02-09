/// @description Barra de vida

var _vida = (vida_atual / vida_max) * 100;
draw_healthbar(200, 20,1080, 30, _vida, c_black,
c_maroon, c_lime, 0, true, true);


