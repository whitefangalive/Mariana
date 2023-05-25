
//REAL DEATH FINAL
if (sprite_index = spr_goldy_die) {
	instance_create_layer(x, y, "player_layer", obj_Scales);
	instance_destroy();
}