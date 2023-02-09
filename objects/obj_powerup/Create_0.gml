chance = random(100);

speed = 2;
direction = irandom(359);

//iniciando alarm
alarm[0] = room_speed;

if(chance >= 90)
	cor = c_red;
	
else if (chance >= 45)
	cor = c_yellow;
	
else
	cor = c_aqua;