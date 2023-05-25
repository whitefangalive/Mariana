
// You can write your code in this editor
var speed_x = x - xprevious;
var speed_y = y - yprevious;

// Get the Y speed of the fish by subtracting the current Y position
// from the previous Y position


// This condition checks if the fish is moving right
if(speed_x >= 1)
{
	// In that case we reset the horizontal scale
	if (!place_meeting(x,y,obj_diver)) {
	image_xscale = -1;
	}
	direction = 180;


}

// If fish is moving left
if(speed_x <= -1)
{
	// Set horizontal scale to -1 to flip it
	image_xscale = 1;
	direction = 0;
}

if(speed_y <= -1)
{
	// Set horizontal scale to -1 to flip it
	direction = -90;
	
}

if(speed_y <= 1)
{
	// Set horizontal scale to -1 to flip it
	direction = 90;
	
}

if (place_meeting(x+swim_speed, y, obj_collision_parent) || (place_meeting(x-swim_speed, y, obj_collision_parent)))
{
	path_end(); 
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
		image_angle = 270;
	}
	if ((place_meeting(x, y-swim_speed, obj_collision_parent))) {
		y = y + swim_speed;
		image_angle = 0;
	}
}
