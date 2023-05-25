/**
*Rotates and disipates partilces input paricle name
*/
function particleScript(particleName, move) {
	image_angle += 1;
	if (move == true) {
		x += (randDir/3);
		y += (randDir2/5);
	}
	var rateOfChange = (irandom_range(20, 40) / 1000);

	despawn--;

	if (despawn < 0) {
		despawn = maxDespawn;
	}

	if (particleName.image_alpha > 0 && despawn == maxDespawn-1) {
		despawn--;
		image_alpha = particleName.image_alpha - rateOfChange;
	}
	if (particleName.image_alpha <= 0) {
		instance_destroy();
	}
}