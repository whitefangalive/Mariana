if (!global.paused) {
	if (distance_to_object(obj_diver) < 800) {
		var xdist = x - obj_diver.x;
		if ((xdist < 400 && xdist > 0) || (xdist > -400) && xdist < 0) {
			timer--;
			if (timer <= 0) {
				timer = 10;
				instance_create_layer(x, y, "in_front_of_player", vfx_smoke);
			}
		}
	}
}