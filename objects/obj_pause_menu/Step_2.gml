if (locked == true && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any))) {
	var last_input;
	if (mouse_check_button_pressed(mb_left)) {
    last_input = mb_left;
	} else if (mouse_check_button_pressed(mb_right)) {
	    last_input = mb_right;
	} else if (mouse_check_button_pressed(mb_middle)) {
	    last_input = mb_middle;
	} else {
		last_input = keyboard_lastkey;
	}
	
	currentControls[pos] = last_input;
	locked = false;
	option[2, pos] = controlsArray[pos] + ": " + global._fhinputKeys[currentControls[pos]];
	
	obj_settings.key_up = currentControls[0];
	obj_settings.key_left = currentControls[1];
	obj_settings.key_down = currentControls[2];
	obj_settings.key_right = currentControls[3];
	obj_settings.key_select = currentControls[4];
	obj_settings.key_attack = currentControls[5];
	obj_settings.key_map = currentControls[6];
	obj_settings.key_dash = currentControls[7];
	obj_settings.key_escape = currentControls[8];
	obj_settings.key_inventory = currentControls[9];
}