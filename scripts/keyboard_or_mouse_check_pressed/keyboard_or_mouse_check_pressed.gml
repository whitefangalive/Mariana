// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function keyboard_or_mouse_check_pressed(key){
	if (key == mb_left || key == mb_right) {
		if (mouse_check_button_pressed(key)) {
			return true;
		}
	} else {
		if (keyboard_check_pressed(key)) {
			return true;
		}
	}
}