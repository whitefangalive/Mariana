/// @description jump
var distY = y - (obj_diver.y);

if (place_meeting(x, y+fallSpeed, obj_collision_parent)) {
	if (distY > 100 && distY < 350) {
		path_start(path_jump, swim_speed * 2, path_action_stop, false);
	} else {
		path_start(path_jump_big, swim_speed * 2, path_action_stop, false);
	}
	armSprite = spr_crabioli_right_arm;
	rightArmRotation = 0;
}
onceJump = false;