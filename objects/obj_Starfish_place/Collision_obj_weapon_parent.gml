if obj_diver.attacking = 1 {
	if (once == false) {
		once = true;
		flashAlpha = 1;
	}
	flashAlpha -= 0.05;
	if (object_exists(obj_diver)) {
		move_towards_point(obj_diver.x, obj_diver.y, -0.5);
	}
	image_angle = image_angle + random_range(-10, 10);
	alarm[0] = 10;
}
