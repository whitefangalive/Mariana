if (speed != 0) {
	sprite_index = spr_flora_crab_walk;
} else {
	sprite_index = spr_flora_crab
}

if (place_meeting(x+swim_speed, y, obj_collision_parent) || (place_meeting(x-swim_speed, y, obj_collision_parent)))
{
	if ((place_meeting(x-swim_speed, y, obj_collision_parent))) {
		x = x + swim_speed
		needsToMoveLeftRight = 0;
	}
	if ((place_meeting(x+swim_speed, y, obj_collision_parent))) {
		x = x - swim_speed;
		needsToMoveLeftRight = 1;
	}
	 
}
if (place_meeting(x, y, obj_collision_parent))
{
	y = y - swim_speed;
}

if ((!place_meeting(x+25, y+2, obj_collision_parent)) || (!place_meeting(x-25, y+2, obj_collision_parent))) {
	if (!place_meeting(x+25, y+2, obj_collision_parent)) {
		speed = 0;
		needsToMoveLeftRight = 0;
	}
	if (!place_meeting(x-25, y+2, obj_collision_parent)) {
		speed = 0;	
		needsToMoveLeftRight = 1;
	}
} else {
	needsToMoveLeftRight = -1;
}