
if object_exists(obj_diver) {
	
	if (distance_to_object(obj_diver) > (camera_get_view_height(view_camera[0])*2))  {
		
		instance_destroy();
	}
}

if ((place_meeting(x, y-speed, obj_collision_parent) && !place_meeting(x, y-speed, obj_bubble_non_collision_parent)) || 
(place_meeting(x, y-speed, obj_any_behavior_parent) && !place_meeting(x, y-speed, obj_diver))) {
	sprite_index = spr_bubble_pop;
	speed = 0;
}

if (instance_number(vfx_bubble) > 150) {
	instance_destroy();
}