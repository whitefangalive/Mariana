
// You can write your code in this editor
var speed_x = x - xprevious;
var speed_y = y - yprevious;

if (instance_exists(obj_diver)) {
	var dist_x = obj_diver.x - x;
	var dist_y = obj_diver.y - y;
}
// Get the Y speed of the fish by subtracting the current Y position
// from the previous Y position



if(speed_y <= 1)
{
	// Set horizontal scale to -1 to flip it
	direction = 90;
	
}
if (place_meeting(x, y, obj_collision_parent)) {
		var nearBlock = instance_nearest(x, y, obj_collision_parent);
		move_towards_point(nearBlock.x, nearBlock.y, -3.6);
}
if (place_meeting(x+swim_speed, y, obj_collision_parent) || (place_meeting(x-swim_speed, y, obj_collision_parent)) || place_meeting(x, y+swim_speed, obj_collision_parent) || (place_meeting(x, y-swim_speed, obj_collision_parent))) {
if ((place_meeting(x-swim_speed, y, obj_collision_parent))) {
	var colliding = instance_nearest(x-swim_speed, y, obj_collision_parent);
	if (x > colliding.x) {
		
		x = x + swim_speed;
	}
	if (abs(dist_x) > abs(dist_y)) {
		image_angle = 0;
	}
}
if ((place_meeting(x+swim_speed, y, obj_collision_parent))) {
	var colliding = instance_nearest(x+swim_speed, y, obj_collision_parent);
	if (x < colliding.x) {
		x = x - swim_speed;
	}
	if (abs(dist_x) > abs(dist_y)) {
		image_angle = 0;
	}

}
	if (place_meeting(x, y+swim_speed, obj_collision_parent))
	{
		// so you can't just choose both, or they can go through walls, but you can't just choose one, or they can go through walls, choose one, depending on distance from origin
		var colliding = instance_nearest(x, y+swim_speed, obj_collision_parent);
		if (y < colliding.y) {
			y = y - swim_speed;
		}
		if (instance_exists(obj_diver)) {
			if (abs(dist_x) < abs(dist_y)) {
				image_angle = sign(dist_x)* 270;
			}
		}
	}
	if ((place_meeting(x, y-swim_speed, obj_collision_parent))) {
		var colliding = instance_nearest(x, y-swim_speed, obj_collision_parent);
		if (y > colliding.y) {
			y = y + swim_speed;
		}
		if (instance_exists(obj_diver)) {
			if (abs(dist_x) < abs(dist_y)) {
				image_angle = sign(dist_x)* 90;
			}
		}
	}
	
	 
} else {
	//which direction to face when swimming
	if (abs(dist_x) > abs(dist_y)) {
		// This condition checks if the fish is moving right
		if(speed_x >= 1)
		{
			// In that case we reset the horizontal scale
			if (!place_meeting(x,y,obj_diver)) {
				image_xscale = -1;
			}
			image_angle = 0;
		}

		// If fish is moving left
		if(speed_x <= -1)
		{
			// Set horizontal scale to -1 to flip it
			image_xscale = 1;
			image_angle = 0;
		}
	} else {
		if(speed_y <= -1) {
			image_xscale = 1;
			image_angle = -90;
	
		} 
		if(speed_y >= 1) {
			image_xscale = 1;
			image_angle = 90;
		}
	}

}


