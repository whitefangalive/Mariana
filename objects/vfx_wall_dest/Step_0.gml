
image_angle += 1;
	x += (randDir/3);
	y += (randDir2/3);

var rateOfChange = (irandom_range(20, 40) / 1000);

despawn--;

if (despawn < 0) {
	despawn = maxDespawn;
}

if (image_alpha > 0 && despawn == maxDespawn-1) {
	despawn--;
	image_alpha = image_alpha - rateOfChange;
}
if (image_alpha <= 0) {
	instance_destroy();
}