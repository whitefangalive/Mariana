frame += spe;
if (frame > 360) {
	frame = 0;
}
var scale = dcos(frame) + scaled;
image_xscale = scale;
image_yscale = scale;

if (!instance_exists(parent1)) {
	instance_destroy();
}