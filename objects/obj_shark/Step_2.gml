if (distance_to_object(obj_diver) < 800) {
// You can write your code in this editor
	var speed_x = x - xprevious;
	var speed_y = y - yprevious;

	var spe = sqrt(sqr(speed_x) + sqr(speed_y));
// Get the Y speed of the fish by subtracting the current Y position
// from the previous Y position


// This condition checks if the fish is moving right
if(speed_x >= 1)
{
	// In that case we reset the horizontal scale
	if (!place_meeting(x,y,obj_diver)) {
	image_xscale = -1 * abs((image_xscale));
	}
}

// If fish is moving left
if(speed_x <= -1)
{
	// Set horizontal scale to -1 to flip it
	image_xscale = 1 * abs((image_xscale));

}

if (place_meeting(x+spe, y, obj_collision_parent) || (place_meeting(x-spe, y, obj_collision_parent))) {
		if ((place_meeting(x-spe, y, obj_collision_parent))) {
		 x = x + spe
		 needsToMoveLeftRight = 1;
		}
		if ((place_meeting(x+spe, y, obj_collision_parent))) {
		 x = x - spe;
		 needsToMoveLeftRight = 0;
		}
	 
	} else {
		needsToMoveLeftRight = -1;
	}
	if (place_meeting(x, y+spe, obj_collision_parent) || (place_meeting(x, y-spe, obj_collision_parent)))
	{

		if (place_meeting(x, y+spe, obj_collision_parent))
		{
			y = y - spe;
		}
		if ((place_meeting(x, y-spe, obj_collision_parent))) {
			y = y + spe;
		}
	}
} else {
	speed = 0;
}
