cx = obj_diver.x;
cy = obj_diver.y;

function underneathLine() {
	var result = false;
	var angleReal = -(image_angle % 360)
	if ((angleReal > -180 && angleReal < -90) || (angleReal > 0 && angleReal < 90)) {
		if (obj_diver.y > dtan(angleReal) * (obj_diver.x - x) + (y)) {
			if (obj_diver.x < x + ((obj_diver.y - y) / dtan(angleReal))) {
				result = true;
			}
		}
	} else if ((angleReal > -90 && angleReal < 0) || (angleReal > 90 && angleReal < 180)) {
		if (obj_diver.y < dtan(angleReal) * (obj_diver.x - x) + (y)) {
			if (obj_diver.x < x + ((obj_diver.y - y) / dtan(angleReal))) {
				result = true;
			}
		}
	}
	
	return result;
}

