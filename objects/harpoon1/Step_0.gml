if (object_exists(obj_diver)) {
	if (obj_diver.attacking = 1) {
		sprite_index = harpoon;
	x = obj_diver.x;
	if (!obj_diver.input_direction = 90) {
	y = obj_diver.y;
	}

	if (obj_diver.input_direction = 180 || obj_diver.input_direction = 0) {
	image_xscale = obj_diver.image_xscale;
	image_angle = 0;
	} else {
		if (obj_diver.input_direction = 90) {
		image_angle = obj_diver.input_direction;
		image_xscale = 1;
		y = obj_diver.y - 40;
		} else {
		if (obj_diver.input_direction = 270) {
		image_angle = obj_diver.input_direction; 
		image_xscale = 1;
		y = obj_diver.y + 40;
		}
		}
	}
	}
	if (obj_diver.attacking = 0) {
		sprite_index = harpoon_back;
	x = obj_diver.x;
	y = obj_diver.y;

	image_angle = (45 * sign(obj_diver.image_xscale));
	image_xscale = obj_diver.image_xscale;

	}
}