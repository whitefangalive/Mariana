/// @description when leaving
if (obj_settings.previousRoom == destination && obj_settings.code == code) {
	obj_diver.x = destinX;
	obj_diver.y = destinY;
	
	obj_settings.previousRoom = curLocation;
}