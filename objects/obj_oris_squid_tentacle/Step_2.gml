if (image_angle >= 361) {
	image_angle = 1;
}

if (image_angle <= -1) {
	image_angle = 359;
}
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
	if (image_angle != 0) {
		if (image_angle >= 180) {
			image_angle += 0.5;
		} else {
			image_angle -= 0.5;
		}
	}
}