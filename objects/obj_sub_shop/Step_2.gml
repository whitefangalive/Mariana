/// @description when leaving sub
// You can write your code in this editor
if (room == Room1 && obj_settings.previousRoom == room_shop_top) {
	with(obj_diver) {
		x = 5844;
		y = 6484;
	}
	obj_settings.previousRoom = Room1;
}

if (room == Room2 && obj_settings.previousRoom == room_shop_middle) {
	with(obj_diver) {
		x = 5126;
		y = 6494;
	}
	obj_settings.previousRoom = Room2;
}