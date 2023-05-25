// get input
key_A = keyboard_check_pressed(obj_settings.key_left);
key_D = keyboard_check_pressed(obj_settings.key_right);
key_accept = keyboard_check_pressed(obj_settings.key_select);

//storen number of otpions
op_length = array_length(global.inventory);

//move through menu
if (!instance_exists(obj_inventory_use)) {
pos += key_D - key_A;
}
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length -1};

//using menu
if !instance_exists(obj_inventory_use) && !instance_exists(obj_text) {
	if key_accept {
		if (array_length(global.inventory) > 0) {
	audio_play_sound(sfx_select, 2, false);
			var _sml = menu_level;
		
			instance_create_layer(0, 0, "menu_layer", obj_inventory_use);
			global.inventory_menu = true;
		
			// set pos back
			if _sml != menu_level {pos = 0};
	
			//correct option length
			op_length = array_length(global.inventory);

		}
	}
}
// sound
if (keyboard_check_pressed(obj_settings.key_left) || keyboard_check_pressed(obj_settings.key_right)) {
	audio_play_sound(sfx_move_selected, 2 ,false);
	audio_sound_gain(sfx_move_selected, global.volume_setting, 0);
}

