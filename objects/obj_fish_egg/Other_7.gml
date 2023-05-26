if (sprite_index = spr_fish_egg_hatch) {
	if (irandom_range(1, 3) != 3) {
		var guppy = instance_create_layer(x,y, "player_layer", asset_get_index(fish));
		guppy.age = 0;
	}
	instance_destroy();
}