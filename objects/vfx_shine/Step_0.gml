frame++;
if (frame > 360) {
	frame = 0;
}
var scale = dcos(frame) + scaled;
image_xscale = scale;
image_yscale = scale;