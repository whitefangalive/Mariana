if ((distance_to_object(obj_diver) < 15) && global.inventoried == false && global.paused == false) {
	if keyboard_check_pressed(obj_settings.key_select) {
		
		if ((array_contains(obj_settings.achivements, "Doored")) == -1) {
			//array_push(obj_settings.achivements, "Doored");
		}
		if (room == Room1) {
			array_set(global.doorInRoomMain, destination, [[], [x, y]]);
		} else {
			array_set(global.doorInRoomMain, destination, [[], [x + global.doorInRoomMain[room][1][0],y + global.doorInRoomMain[room][1][1]]]);
		}
		saveGame(string(curLocation) + ".save");
		room_goto(destination);
		loadGame(string(destination) + ".save", false);
		obj_settings.previousRoom = curLocation;
		obj_settings.code = code;
	}
}