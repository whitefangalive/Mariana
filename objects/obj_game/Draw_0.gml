
if (global.paused != true) {
	var _c = c_aqua;
	if ((array_contains(obj_settings.achivements, "Moved")) == -1) {
		draw_text_color(obj_diver.x+50, obj_diver.y-50, global._fhinputKeys[obj_settings.key_up], _c, _c, _c, _c, text_opacity);
		draw_text_color(obj_diver.x+50-string_width("W "), obj_diver.y-35, global._fhinputKeys[obj_settings.key_left] +
		" " + global._fhinputKeys[obj_settings.key_down] + 
		" " + global._fhinputKeys[obj_settings.key_right] , _c, _c, _c, _c, text_opacity);
		
		if (keyboard_or_mouse_check_pressed(obj_settings.key_right)) {
			array_push(obj_settings.achivements, "Moved");
		}
	}
	if ((array_contains(obj_settings.achivements, "Chested")) == -1) {
			with (obj_diver) {
				if (distance_to_object(obj_chest) < 20) {
					draw_text_color(obj_diver.x+50, obj_diver.y-25, global._fhinputKeys[obj_settings.key_select], _c, _c, _c, _c, obj_game.text_opacity);
					if (keyboard_or_mouse_check_pressed(obj_settings.key_select)) {
						array_push(obj_settings.achivements, "Chested");
					}
				}
			}
		}
		if ((array_contains(obj_settings.achivements, "SubShopped")) == -1) {
				with (obj_diver) {
				if (distance_to_object(obj_sub_shop) < 15) {
					draw_text_color(obj_diver.x+50, obj_diver.y-25, global._fhinputKeys[obj_settings.key_select], _c, _c, _c, _c, obj_game.text_opacity);
					if (keyboard_or_mouse_check_pressed(obj_settings.key_select)) {
						array_push(obj_settings.achivements, "SubShopped");
					}
				}
			}
		}
		if ((array_contains(obj_settings.achivements, "Doored")) == -1) {
			with (obj_diver) {
				if (distance_to_object(obj_door) < 15) {
					draw_text_color(obj_diver.x+50, obj_diver.y-25, global._fhinputKeys[obj_settings.key_select], _c, _c, _c, _c, obj_game.text_opacity);
					if (keyboard_or_mouse_check_pressed(obj_settings.key_select)) {
						array_push(obj_settings.achivements, "Doored");
					}
				}
			}
		}
		if ((array_contains(obj_settings.achivements, "Attacked")) == -1) {
			with (obj_diver) {
				if (distance_to_object(obj_docile_behavior_parent) < 15) {
					draw_text_color(obj_diver.x+50, obj_diver.y-45, global._fhinputKeys[obj_settings.key_attack], _c, _c, _c, _c, obj_game.text_opacity);
					if (keyboard_or_mouse_check_pressed(obj_settings.key_attack)) {
						array_push(obj_settings.achivements, "Attacked");
						show_debug_message(obj_settings.achivements)
					}
				}
			}
		}
}
