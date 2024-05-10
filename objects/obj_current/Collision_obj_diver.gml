/// @description player collide
var angleBetween = 90;
var hypot = sqrt(sqr(cx) + sqr(cy));
var TentacleX = ((hypot * 1) * dsin(angleBetween + image_angle));
var TentacleY = ((hypot * 1) * dcos(angleBetween + image_angle));
var xChange = TentacleX * 1;
var yChange = TentacleY * 1;
var xChanged = xChange / max(xChange, yChange) * pushSpeed;
var yChanged = yChange / max(xChange, yChange) * pushSpeed;


with (obj_diver) { 
	if (!place_meeting(x+xChanged,y+yChanged,obj_collision_parent)) {
		x += xChanged;
		y += yChanged;	
	}
}

if (obj_diver.y - y > 5) {
	with (obj_diver) {
		if (keyboard_check(key_s) && swim_speed != 10) {
			//y = y - (yChange + (obj_diver.vsp + 0.1));
			//x = x - (xChange + (obj_diver.hsp + 0.1));
		}
	}
}

if (underneathLine()) {
	if (instance_exists(obj_diver)) {
		obj_diver.y = obj_diver.y - (yChange + (obj_diver.vsp + 0.1));
		obj_diver.x = obj_diver.x - (xChange + (obj_diver.hsp + 0.1));
	}
}

