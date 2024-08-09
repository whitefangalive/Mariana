if (image_alpha != 1) {


	var needItem = "Gear Shaft";
	if ((distance_to_object(obj_diver) < 20) && global.inventoried == false && global.paused == false) {

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
}
