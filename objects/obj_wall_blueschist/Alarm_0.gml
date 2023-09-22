instance_destroy();
for (var i = 0; i < 2; i++) {
	var particle = instance_create_layer(x,y, "player_layer", vfx_wall_dest);
	particle.sprite_index = spr_wall_destructible_by_star;
}