// get input
key_w = keyboard_check_pressed(obj_settings.key_up);
key_s = keyboard_check_pressed(obj_settings.key_down);
key_accept = keyboard_check_pressed(vk_anykey);

//storen number of otpions
if (key_accept == 1 || keyboard_or_mouse_check_pressed(mb_any)) {
	if (draw_char >= text_length[menu_level]) {
		menu_level++;
		pos++;
		draw_char = 0;
	} else {
		draw_char = text_length[menu_level];
	}
		audio_play_sound(sfx_select, 2 ,false, global.volume_setting);
		
	if (array_length(obj_settings.currentlySaying) > 3 && menu_level >= 3) {
		for (var i = 0; i < array_length(obj_settings.currentlySaying) - 3; i++) {
			obj_settings.currentlySaying[i] = obj_settings.currentlySaying[i + 3];
		}
	}
}

if (menu_level >= 3) {
		menu_level = 0;
}
if (menu_level < 2 && (pos !=(array_length(obj_settings.currentlySaying)) -1)) {
	if (draw_char >= text_length[menu_level]) {
		menu_level++;
		pos++;
		draw_char = 0;
	} 
	
	

}

if (pos == (array_length(obj_settings.currentlySaying))) {
instance_destroy();
}

