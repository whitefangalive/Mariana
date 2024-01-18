if (instance_exists(obj_diver)) {
	x = obj_diver.x + xOffset;
	y = obj_diver.y + 9 + yOffset;
	
	switch (obj_diver.sprite_index) {
		case spr_divr_attacking_side:
			xOffset = -2 * sign(obj_diver.image_xscale);
			yOffset = 0;
		break;
		default:
			xOffset = 0;
			yOffset = 0;
		break;
	}
	
	if (sign(obj_diver.image_xscale) != sign(image_xscale)) {
		image_xscale = -image_xscale;
	}
}