if (spawnLever) {
	lever = instance_create_layer(x, y, "behind_diver", obj_lever_Place);
	lever.image_xscale = image_xscale;
	lever.image_yscale = image_yscale;
	lever.baseRotation = image_angle;
} else {
	lever = instance_create_layer(x, y, "behind_diver", obj_Lever_Slot);
	lever.image_xscale = image_xscale;
	lever.image_yscale = image_yscale;
	lever.baseRotation = image_angle;
}
