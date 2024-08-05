if (flashAlpha <= 0) {
	if (!array_contains(obj_settings.achivements, "Lunked")) {
		delt(damage, x, y);
	} else {
		instance_destroy();
	}
}

