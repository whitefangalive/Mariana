if ((distance_to_object(obj_diver) < 15) && global.inventoried == false && global.paused == false) {
 if keyboard_check_pressed(obj_settings.key_select) {
	 if ((array_contains(obj_settings.achivements, "SubShopped")) == -1) {
			array_push(obj_settings.achivements, "SubShopped");
		}
	 saveGame(string(curLocation) + ".save");
	room_goto(destination);
	loadGame(string(destination) + ".save", false);
	obj_settings.previousRoom = room_shop_top;
	obj_settings.timesEnteredSub++;
 }
}

