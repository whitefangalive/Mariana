if (distance_to_object(obj_diver) < 850) {
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
		}
	}

	// If fish is moving left
	if(speed_x <= -1)
	{
		// Set horizontal scale to -1 to flip it
	}
	var _div = 1;

	if ((place_meeting(x-spe, y, obj_collision_parent))) {
		x = x + spe/_div
	}
	if ((place_meeting(x+spe, y, obj_collision_parent))) {
		x = x - spe/_div;
	}

	if (place_meeting(x, y+spe, obj_collision_parent)) {
		y = y - spe/_div;
	}
	if ((place_meeting(x, y-spe, obj_collision_parent))) {
		y = y + spe/_div;
	}
	
	if (place_meeting(x, y, obj_collision_parent)) {
		var nearBlock = instance_nearest(x, y, obj_collision_parent);
		move_towards_point(nearBlock.x, nearBlock.y, -1);
	}
}