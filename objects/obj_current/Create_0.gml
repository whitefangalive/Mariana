cx = obj_diver.x;
cy = obj_diver.y;
pushSpeed = 8;

function underneathLine() {
	var result = false;
	if (obj_diver.y > dtan(image_angle) * (obj_diver.x - x) + (y)) {
		if (obj_diver.x > (x + (obj_diver.y - y)) / dtan(image_angle)) {
			result = true;
		}
	}
	return result;
}