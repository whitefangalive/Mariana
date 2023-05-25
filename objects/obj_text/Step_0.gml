// get input
key_w = keyboard_check_pressed(ord("W"));
key_s = keyboard_check_pressed(ord("S"));
key_accept = keyboard_check_pressed(vk_space);

//storen number of otpions

if (key_accept == 1) {
menu_level++;
pos++;
audio_play_sound(sfx_select, 2 ,false);
	if (array_length(obj_settings.currentlySaying) > 3 && menu_level >= 3) {
		for (var i = 0; i < array_length(obj_settings.currentlySaying) - 3; i++) {
			obj_settings.currentlySaying[i] = obj_settings.currentlySaying[i + 3];
		}
	}
if (menu_level >= 3) {
		menu_level = 0;
	}
}

if (pos == (array_length(obj_settings.currentlySaying))) {
instance_destroy();
}

