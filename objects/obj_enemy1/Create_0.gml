vspeed += 3;

alarm[0] = random_range(1,3) * room_speed;

atirando = function()
{
	if(y >= 0 && y <= room_height)
	instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro1);

	alarm[0] = random_range(1,3) * room_speed;
}
