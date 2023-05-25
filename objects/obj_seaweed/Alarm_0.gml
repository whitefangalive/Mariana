/// @description check for gone
if (global.paused == false) {
	if (!place_meeting(obj_any_behavior_parent.x, obj_any_behavior_parent.y, obj_seaweed)) {
		if (xScale == 1) {
			image_xscale = 1;
		} else {
			image_xscale = -1;
		}
	}
}