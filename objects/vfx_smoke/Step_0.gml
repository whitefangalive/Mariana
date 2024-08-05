/**
*Rotates and disipates partilces input paricle name
*/
if (!global.paused) {
	image_angle += 1;
	image_xscale = scale;
	image_yscale = scale;
	scale = scale + 0.005;

	x += (randDir/5);
	y += (randDir2/5);
	image_alpha = image_alpha - rando;
	
	if (image_alpha <= 0) {
		instance_destroy();
	}
}

