var needItem = "Lever";
if ((distance_to_object(obj_diver) < 15) && global.inventoried == false && global.paused == false && empty) {
	

	if keyboard_check_pressed(obj_settings.key_select) {
		
		if (array_contains(global.inventory, needItem) != -1) {
			array_delete_element(global.inventory, needItem);
			
			empty = false;
			image_blend = c_white;
			image_alpha = 1;
		} else {
			if (!instance_exists(obj_text)) {
				alarm[1] = 2;
			}
			
		}
	}
}

if (!empty) {
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


}
