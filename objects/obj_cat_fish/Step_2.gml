
// You can write your code in this editor
var speed_x = x - xprevious;
var speed_y = y - yprevious;

var spe = sqrt(sqr(speed_x) + sqr(speed_y));

// Get the Y speed of the fish by subtracting the current Y position
// from the previous Y position

if (abs(speed_x) < abs(speed_y)) {
	sprite_index = spr_cat_fish_up;
} else {
	sprite_index = spr_cat_fish_left;
}
// This condition checks if the fish is moving right
if(speed_x >= 0.1)
{
	// In that case we reset the horizontal scale
	if (!place_meeting(x,y,obj_diver)) {
	image_xscale = -1 * abs((image_xscale));
	
	}
}

// If fish is moving left
if(speed_x <= -0.1)
{
	// Set horizontal scale to -1 to flip it
	image_xscale = 1 * abs((image_xscale));
}

if (speed_y >= 0.1) {
	if (!place_meeting(x,y,obj_diver)) {
		image_yscale = -1 * abs((image_yscale));
	}
}

if(speed_y <= -0.1)
{
	// Set horizontal scale to -1 to flip it
	image_yscale = 1 * abs((image_yscale));
}

if (sprite_index = spr_cat_fish_left) {
	image_yscale = 1 * abs((image_yscale));
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
