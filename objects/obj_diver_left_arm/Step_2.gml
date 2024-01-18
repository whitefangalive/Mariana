if (instance_exists(obj_diver)) {
	if (sign(obj_diver.image_xscale) != sign(image_xscale)) {
		image_xscale = -image_xscale;
	}
	if (sign(obj_diver.image_yscale) != sign(image_yscale)) {
		image_yscale = -image_yscale;
	}
	x = obj_diver.x + (15 * sign(image_xscale)) + xOffset;
	y = obj_diver.y - (1 * sign(image_yscale)) + yOffset;
	
	switch (obj_diver.sprite_index) {
		case spr_swimming:
			if (obj_diver.image_index < 1) {
				xOffset = -2 * sign(image_xscale);
				yOffset = -1 * sign(image_yscale);
				image_angle = -31 * -sign(image_xscale);
			} else {
				xOffset = -1 * sign(image_xscale);
				yOffset = -3 * sign(image_yscale);;
				image_angle = -35 * -sign(image_xscale);
			}
		break;
		case spr_floating:
			if (obj_diver.image_index < 1) {
				xOffset = -2 * sign(image_xscale);
				yOffset = -1 * sign(image_yscale);
				image_angle = -31 * -sign(image_xscale);
			} else {
				xOffset = -1 * sign(image_xscale);
				yOffset = -3 * sign(image_yscale);;
				image_angle = -35 * -sign(image_xscale);
			}
		break;
		case spr_divr_attacking_side:
			xOffset = -1 * sign(obj_diver.image_xscale);
			yOffset = 0;
			image_angle = 90 * sign(obj_diver.image_xscale);;
		break;
		case spr_diver_attacking_up:
			xOffset = -10 * sign(obj_diver.image_xscale);
			yOffset = -15;
			image_angle = -135 * sign(obj_diver.image_xscale);
		break;
		case spr_diver_attacking_down:
			xOffset = -11 * sign(obj_diver.image_xscale);
			yOffset = 2;
			image_angle = -35 * sign(obj_diver.image_xscale);
		break;
		default:
			xOffset = 0;
			yOffset = 0;
			image_angle = 0;
		break;
	}
	
	
}
