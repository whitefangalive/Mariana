if ((distance_to_object(obj_diver) < 15) && global.inventoried == false && global.paused == false) {
	if keyboard_check_pressed(obj_settings.key_select) {
		if ((array_contains(obj_settings.achivements, "SubShopped")) == -1) {
				array_push(obj_settings.achivements, "SubShopped");
		}
		saveGame(string(curLocation) + ".save");
		room_goto(destination);
		loadGame(string(destination) + ".save", false);
		switch (room) {
			case Room1:
				obj_settings.previousRoom = room_shop_top;
			break;
			case Room2:
				obj_settings.previousRoom = room_shop_middle;
			break;
			case Room3:
			
			break;
		}
		
		
		obj_settings.timesEnteredSub++;
		// Don't forget to add dialogue at last dialogue - 0.5
		function stuntDialogue(lastDialouge, achievementName) {
			if (obj_settings.timesEnteredSub <= lastDialouge || array_contains(obj_settings.achivements, achievementName)) {
				if (obj_settings.timesEnteredSub == lastDialouge + 0.5) {
					obj_settings.timesEnteredSub = lastDialouge + 1;
				}
			} else {
				obj_settings.timesEnteredSub = lastDialouge - 0.5;
			}
		}
		//before finds light
		stuntDialogue(9, "Found light");
		//before finds thorium
		stuntDialogue(14, "Found thorium");
		
		
	}
}

