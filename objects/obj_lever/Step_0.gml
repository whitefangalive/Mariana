if ((distance_to_object(obj_diver) < 20) && global.inventoried == false && global.paused == false) {
 if keyboard_check_pressed(obj_settings.key_select) {
	opened = !opened;
	frame = 0;
	}
}

if opened == true {
	image_angle = followAnimationCurve(a_log, startingAngle, endingAngle - startingAngle);
	frame += curveSpeed;
	obj_warning_gate.opening = true;
} else {
	image_angle = followAnimationCurve(a_log, endingAngle, startingAngle - endingAngle);
	frame += curveSpeed;
}

