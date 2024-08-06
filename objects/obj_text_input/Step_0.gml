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
			if (commandArray[1] == "kit") {
				buyItem("Air Tank");
				buyItem("Air Tank");
				buyItem("Air Tank");
				if (global.equipped[1] != 0.0) {
						dropItem(convertTo("obj", string(global.equipped[1])));
				}
				array_set(global.equipped, 1, "Booster");
				var equippmentSlot = 8;
				if (global.equipped[equippmentSlot] != 0.0) {
						dropItem(convertTo("obj", string(global.equipped[equippmentSlot])));
				}
				array_set(global.equipped, equippmentSlot, "Booster Mod");
				
				if (global.equipped[2] != 0.0) {
						dropItem(convertTo("obj", string(global.equipped[2])));
				}
				array_set(global.equipped, 2, "Night Vision Goggles");
				instance_destroy();
			} else {
				if (array_length(commandArray) == 2) {
					buyItem(convertTo("name", commandArray[1]));
				} else if (array_length(commandArray) > 2) {
					for (var i = 0; i < commandArray[2]; i++) {
						buyItem(convertTo("name", commandArray[1]));
					}
				}
			}
			
		break;
		default:
		
		break;
	}
	
}


