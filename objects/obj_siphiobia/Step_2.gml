if (array_contains(global.bosses_beaten, "Siphi")) {
	instance_destroy();
	} else {
	if (instance_exists(obj_diver) && obj_diver.y > 11300) {
		age++;
		EEx = obj_diver.x;
		EEy = obj_diver.y;
			var pd = point_direction(x, y, EEx, EEy);
			var dd = angle_difference(image_angle,180 + pd);
			image_angle -= min(abs(dd), rotation_speed) * sign(dd);
			direction = image_angle;
			speed = -swim_speed;
			for (var i = 1; i < array_length(stemBody); ++i) {
				with (stemBody[i]) {
					var upperTent = allTentaclesAbove[myNumber - 1]; 

					var pd = point_direction(upperTent.x, upperTent.y, x, y);
					var dd = angle_difference(upperTent.image_angle,pd);
				
					upperTent.image_angle -= min(abs(dd), 10) * sign(dd);
				
				
				
					//var pd = upperTent.image_angle;
					//var dd = angle_difference(image_angle,pd);

					//image_angle -= min(abs(dd), 1) * sign(dd);
					var goalx = upperTent.x + (length * dsin(upperTent.image_angle + 90));
					var goaly = upperTent.y + (length * dcos(upperTent.image_angle + 90));
					x = goalx;
					y = goaly;
				
				}
			}

	} else {
		speed = 0;
	}


	stopDeadMusic(m_aquifer);

	if musicStart == true {
		musicFallToLoop(m_hydrogen_start, m_hydrogen_loop);
	}

	if distance_to_object(obj_diver) < 500 {

		if (musicStart == false) {
			switchMusicTo(m_aquifer, m_hydrogen_start, false, 4000);
			musicStart = true;
		}
		var hp = calculateRemainingZooids();
		if (hp <= 0) {
			default_swim_speed = 0;
			swim_speed = 0;
	
	
		if (audio_is_playing(m_hydrogen_loop)) {
			switchMusicTo(m_hydrogen_loop, m_victory, false, 0);
		} else {
			switchMusicTo(m_hydrogen_start, m_victory, false, 0);
		}
		if (!array_contains(global.bosses_beaten, "Siphi")) {
			array_push(global.bosses_beaten, "Siphi");
		}
		instance_create_layer(x, y, "player_layer", vfx_slunk);
		instance_destroy()
		}
	
	}
}