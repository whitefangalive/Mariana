/// @description player collide

with (obj_diver) { 
	if (!place_meeting(x+8,y,obj_collision_parent)) {
		x = x + 8;
	}
}

if (obj_diver.y - y > 5) {
	with (obj_diver) {
		if (keyboard_check(key_s) && swim_speed != 10) {
			y = y - 5;
		}
	}
}