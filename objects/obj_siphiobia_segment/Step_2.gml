

	// check if you are the last tentacle
	if (sprite_index != spr_oris_squid_tentacle_end) {
		if (myNumber == (array_length(allTentaclesAbove) - 1)) {
			
		}
	}
	// calculate position based on angle and length and angle of previous tentacle
	if (myNumber == 0) {
		var upperTent = obj_siphiobia;
		var goalx = upperTent.x + (length * dsin(upperTent.image_angle + 90));
		var goaly = upperTent.y + (length * dcos(upperTent.image_angle + 90));
		x = goalx;
		y = goaly;
	} 

