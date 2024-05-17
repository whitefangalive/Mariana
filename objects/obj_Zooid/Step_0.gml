if (HP <= 0) {
	if (flashAlpha == 0) {
		flashAlpha = 1;
		instance_destroy();
	}
}

if (flashAlpha > 0) {
	flashAlpha -= 0.02;
}
