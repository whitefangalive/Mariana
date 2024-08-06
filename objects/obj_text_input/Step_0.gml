key_accept = (keyboard_check_pressed(vk_enter));
_drawtext = keyboard_string;

if (key_accept) {
	var commandArray = string_split(_drawtext, " ");
	keyboard_string = "";
	switch (commandArray[0]) {
		case "goto":
			room_goto(asset_get_index(commandArray[1]));
		break;
		case "give":
			if (array_length(commandArray) == 2) {
				buyItem(convertTo("name", commandArray[1]));
			} else if (array_length(commandArray) > 2) {
				for (var i = 0; i < commandArray[2]; i++) {
					buyItem(convertTo("name", commandArray[1]));
				}
			}
		break;
		default:
		
		break;
	}

}


