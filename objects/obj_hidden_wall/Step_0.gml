if (place_meeting(x, y, obj_diver)) {
	if (alpha > 0) {
		alpha -= changeSpeed;
	}
} else {
	// if you are not in the wall, slowly ease to full alpha
	if (alpha < 1) {
		alpha += changeSpeed;
	}
}
image_alpha = EaseInQuad(alpha, 0, 1, 1);