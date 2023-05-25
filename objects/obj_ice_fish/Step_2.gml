if distance_to_object(obj_diver) < 850 {
	// You can write your code in this editor
	var speed_x = x - xprevious;

	// This condition checks if the fish is moving right
	if(speed_x >= 1)
	{
		// In that case we reset the horizontal scale
		image_xscale = -1 * abs((image_xscale));
	}

	// If fish is moving left
	if(speed_x <= -1)
	{
		// Set horizontal scale to -1 to flip it
		image_xscale = 1 * abs((image_xscale));
	}

	if (place_meeting(x+swim_speed, y, obj_collision_parent) || (place_meeting(x-swim_speed, y, obj_collision_parent)))
	{
		if ((place_meeting(x-swim_speed, y, obj_collision_parent))) {
			x = x + swim_speed
		}
		if ((place_meeting(x+swim_speed, y, obj_collision_parent))) {
			x = x - swim_speed;
		}
	 
	}
	if (place_meeting(x, y+swim_speed, obj_collision_parent) || (place_meeting(x, y-swim_speed, obj_collision_parent)))
	{

		if (place_meeting(x, y+swim_speed, obj_collision_parent))
		{
			y = y - swim_speed;
		}
		if ((place_meeting(x, y-swim_speed, obj_collision_parent))) {
			y = y + swim_speed;
		}
	}
} else {
	speed = 0;
}
