targetX = 0;
targetY = 0;
damage = 1;

image_xscale = 1;
image_yscale = 1;


if (object_exists(obj_diver)) {
	targetX = obj_diver.x;
	targetY = obj_diver.y;
}

despawn = 320;
direction = point_direction(x, y, targetX, targetY);