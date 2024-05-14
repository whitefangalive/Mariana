if (distance_to_object(obj_diver) < 800 || x == 0) {
	image_xscale = squidId.image_xscale * scaledValue;
	image_yscale = squidId.image_yscale * scaledValue;


	if (distance_to_object(obj_diver) < 500) {
		if (image_angle >= 361) {
			image_angle = 1;
		}

		if (image_angle <= -1) {
			image_angle = 359;
		}
		
		//rotate if player interacts
		if (place_meeting(x, y, obj_diver)) {
			var pint = point_direction(x, y, obj_diver.x, obj_diver.y) ;
			if (pint < 270) {
				if (obj_diver.x >= obj_diver.xprevious) {
					image_angle++;
				} else {
					image_angle--;
				}
		
			} else if (point_direction(x, y, obj_diver.x, obj_diver.y) >= 270) {
				if (obj_diver.x <= obj_diver.xprevious) {
					image_angle--;
				} else {
					image_angle++;
				}
		
			}
		} else {
			var speed_x = x - xprevious;
			var speed_y = y - yprevious;

			var spe = sqrt(sqr(speed_x) + sqr(speed_y));
			
			if (image_angle != spe) {
				if (image_angle >= 180) {
					image_angle += 0.5;
				} else {
					image_angle -= 0.5;
				}
			}
		}
	}
}