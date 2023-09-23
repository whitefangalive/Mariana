/// @description
// You can write your code in this editor

if (keyboard_check_pressed(obj_settings.key_escape)) {
	if ((array_contains(obj_settings.achivements, "LeftSub")) == -1) {
		array_push(obj_settings.achivements, "LeftSub");
	}
	room_goto(destination);
	loadGame(string(destination) + ".save", false);
	
audio_stop_sound(m_surface_tension);
audio_stop_sound(m_aquifer);
audio_sound_gain(m_hull_sale, 0, 5000);
}

if (!instance_exists(obj_text) && !instance_exists(obj_shop)) {
	instance_create_layer(100, 100, "menu_layer", obj_shop);
}