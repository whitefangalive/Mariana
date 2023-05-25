if (sprite_index = spr_fish_egg_hatch) {
	if (irandom_range(1, 3) != 3) {
		instance_create_layer(x,y, "player_layer", asset_get_index(fish));
	}
	instance_destroy();
}