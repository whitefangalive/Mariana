if obj_diver.attacking = 1 {
	instance_create_layer(x, y, "player_layer", obj_Thorium);
	instance_destroy(shine);
	instance_destroy();
}