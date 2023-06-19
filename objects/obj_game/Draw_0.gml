
if (global.paused != true) {
	
	if ((array_contains(obj_settings.achivements, "Moved")) == -1) {
		var _c = c_aqua;
		draw_text_color(obj_diver.x+50, obj_diver.y-50, global._fhinputKeys[obj_settings.key_up], _c, _c, _c, _c, text_opacity);
		draw_text_color(obj_diver.x+50-string_width("W "), obj_diver.y-35, global._fhinputKeys[obj_settings.key_left] +
		" " + global._fhinputKeys[obj_settings.key_down] + 
		" " + global._fhinputKeys[obj_settings.key_right] , _c, _c, _c, _c, text_opacity);
		
		if (keyboard_check_pressed(obj_settings.key_right)) {
			array_push(obj_settings.achivements, "Moved");
			show_debug_message(obj_settings.achivements);
		}
	}
}
