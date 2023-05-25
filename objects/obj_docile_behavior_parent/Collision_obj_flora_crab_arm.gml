if (instance_number(vfx_blood) < 10) {
	var blood = instance_create_layer(x, y, "player_layer", vfx_blood);
	blood.image_xscale = 0.5;
	blood.image_yscale = 0.5;
}
HP -= 5;