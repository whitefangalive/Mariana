if (keyboard_or_mouse_check_pressed(obj_settings.key_select)) {
	with(instance_nearest(obj_diver.x, obj_diver.y, obj_item_parent)) {
		pickupability = true;
		show_debug_message("set " + object_get_name(object_index) + " pickupablity to true");
	}
}