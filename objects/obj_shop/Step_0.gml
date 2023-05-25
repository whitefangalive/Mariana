// get input
key_w = keyboard_check_pressed(obj_settings.key_up);
key_s = keyboard_check_pressed(obj_settings.key_down);
key_accept = keyboard_check_pressed(obj_settings.key_select);

//storen number of otpions
op_length = array_length(option[menu_level]);

//move through menu
if (!instance_exists(obj_text)) {
	if (!instance_exists(obj_shop_accept)) {
		pos += key_s - key_w;
	}
}
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length -1};

//using menu
if (!instance_exists(obj_text)) {
	visible = true;
	if !instance_exists(obj_shop_accept) {
		if (key_accept) {
			audio_play_sound(sfx_select, 2, false, global.volume_setting);
			var _sml = menu_level;
		
			switch (menu_level) {
	
				//pause menu
				case 0:
					alarm[0] = 1;
				 break;
				 case 1:
					switch (pos) {
						//window settings
					case 0: 
			
					break;
						//brightness
					case 1: 
					menu_level = 0;
					break;
					}
				 break;
	 
				}
		
			// set pos back
			if _sml != menu_level {pos = 0};
	
			//correct option length
			op_length = array_length(option[menu_level]);

		}
	}
} else {
	visible = false;
}

// sound
if (keyboard_check_pressed(obj_settings.key_down)) {
	audio_play_sound(sfx_move_selected, 2 ,false, global.volume_setting);
}

if (keyboard_check_pressed(obj_settings.key_up)) {
	audio_play_sound(sfx_move_selected, 2 ,false, global.volume_setting);
}
