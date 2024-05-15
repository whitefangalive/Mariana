

	// check if you are the last tentacle
	if (myNumber == (array_length(allTentaclesAbove) - 1)) {
		sprite_index = noone;
		if (zooid != noone) {
				instance_destroy(zooid);
		}
	}

	if (sprite_index != spr_stem_end) {
		if (myNumber == (array_length(allTentaclesAbove) - 2)) {
			sprite_index = spr_stem_end;
			if (zooid != noone) {
				instance_destroy(zooid);
			}
		}
	}
	// calculate position based on angle and length and angle of previous tentacle
	if (myNumber == 0) {
		if (zooid != noone) {
			instance_destroy(zooid);
		}
		var upperTent = obj_siphiobia;
		var goalx = upperTent.x + (length * dsin(upperTent.image_angle + 90));
		var goaly = upperTent.y + (length * dcos(upperTent.image_angle + 90));
		x = goalx;
		y = goaly;
	}

