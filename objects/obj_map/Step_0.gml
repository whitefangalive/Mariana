



	key_w = keyboard_check(obj_settings.key_up);
	key_s = keyboard_check(obj_settings.key_down);
	key_a = keyboard_check(obj_settings.key_left);
	key_d = keyboard_check(obj_settings.key_right);


if clickDelay > 0 {
clickDelay -= 1;
}
if (((hsp != 0) || ( vsp != 0)) && clickDelay <= 0) {
	audio_sound_gain(sfx_move_selected, global.volume_setting * 0.5, 0);
	audio_play_sound(sfx_move_selected, 1, false);
	clickDelay = 4;
}
if (global.inventoried == false) {
	var Hmove = key_a - key_d;

	hsp = Hmove * swim_speed;

	var Vmove = key_w - key_s;

	vsp = Vmove * swim_speed;

	x = x + hsp;
	y = y + vsp;
	
	if (mouse_check_button(mb_left)) {
		x = (prevX - (mouseX - device_mouse_x_to_gui(0)) / 2);
		y = (prevY - (mouseY - device_mouse_y_to_gui(0)) / 2);
	} else {
		mouseX = device_mouse_x_to_gui(0);
		mouseY = device_mouse_y_to_gui(0);
		prevX = x;
		prevY = y;
	}
}

