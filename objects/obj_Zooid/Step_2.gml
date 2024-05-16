if (squidId != -1) {
	x = squidId.x;
	y = squidId.y;
}

if (instance_exists(obj_diver) && obj_diver.y > 11300 || x == 0) {
	if (squidId != -1) {
		image_xscale = squidId.image_xscale * scaledValue;
		image_yscale = squidId.image_yscale * scaledValue;
	}
	


	if (distance_to_object(obj_diver) < 500) {
		image_angle = (image_angle + 360) % 360;
		
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

			var spe = sqrt(sqr(speed_x) + sqr(speed_y)) * -speed_x;
			
			if (image_angle != ceil(spe * 4)) {
				var angleToFlip = ceil(((ceil(spe * 4) % 360) + 180) % 360);
				if (angleToFlip < 0) {
					angleToFlip += 360;
				}
				if ((((image_angle) - angleToFlip) + 360) % 360 <= 180) {
					image_angle += 0.5;
				} else {
					image_angle -= 0.5;
				}
			}
		}
	}
}