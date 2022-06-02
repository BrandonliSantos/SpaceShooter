if(instance_exists(obj_player)){
	obj_player.powerUP(chance);
	instance_destroy(id);
}