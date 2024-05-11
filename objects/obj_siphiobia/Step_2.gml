if (distance_to_object(obj_diver) < 800) {

		var pd = point_direction(x, y, mouse_x, mouse_y);
		var dd = angle_difference(image_angle,180 + pd);
		image_angle -= min(abs(dd), 2) * sign(dd);
		direction = image_angle;
		speed = -swim_speed;
		for (var i = 1; i < array_length(stemBody); ++i) {
			with (stemBody[i]) {
				var upperTent = allTentaclesAbove[myNumber - 1]; 

				var pd = point_direction(upperTent.x, upperTent.y, x, y);
				var dd = angle_difference(upperTent.image_angle,pd);
				upperTent.image_angle -= min(abs(dd), 2) * sign(dd);
				
				var goalx = upperTent.x + (length * dsin(upperTent.image_angle + 90));
				var goaly = upperTent.y + (length * dcos(upperTent.image_angle + 90));
				x = goalx;
				y = goaly;
			}
		}

} else {
	speed = 0;
}