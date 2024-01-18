if (y != yprevious) {
	global.oceanDepth += sign(y - yprevious);
}

if (!instance_exists(obj_diver_body)) {
	instance_create_layer(x, y, "in_front_of_player", obj_diver_body);
	instance_create_layer(x, y, "in_front_of_player", obj_diver_head);
	instance_create_layer(x, y, "in_front_of_player", obj_diver_left_arm);
	instance_create_layer(x, y, "in_front_of_player", obj_diver_right_arm);
}