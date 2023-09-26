image_xscale -= 0.1;
image_yscale -= 0.1;
if (image_xscale <= 0) {
	instance_destroy();
	obj_diver.bossRewardAnimationFrame = 0;
	if (!array_contains(obj_settings.achivements, "Gunked")) {
		array_push(obj_settings.achivements, "Gunked");
	}
}

move_towards_point(obj_diver.x, obj_diver.y, 4);