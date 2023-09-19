if (array_contains(global.bosses_beaten, "Crab")) {
	instance_destroy();
} else {
	stopDeadMusic(m_are_there_any_crabs_in_here);
	rightArm.x = x;
	rightArm.y = y;
	leftArm.x = x;
	leftArm.y = y;
	rightArm.image_xscale = image_xscale;
	rightArm.image_yscale = image_yscale;

	leftArm.image_xscale = -image_xscale;
	leftArm.image_yscale = image_yscale;

	rightArm.image_angle = rightArmRotation;
	rightArm.sprite_index = armSprite;


	if distance_to_object(obj_diver) < 500 {
	age++;
	if (distance_to_object(obj_diver) < 100) {
			if (subimg < 5) {
				if (age % 2 == 0) {
					subimg++;
				}
			}
		} else {
		if (subimg >= 1) {
				if (age & 2 == 0) {
					subimg--;
				}
			}
		}
		if (musicStart == false) {
			switchMusicTo(m_are_there_any_crabs_in_here, m_there_is_definitely_a_crab_in_here, true, 200);
			musicStart = true
		}
	
		if (place_meeting(x, y+fallSpeed, obj_collision_parent)) {
			var distXi = x - (obj_diver.x + 300);
			var distXj = x - (obj_diver.x + 125);

			var distY = y - (obj_diver.y);
			if (distY > 100) {

				swim_speed = default_swim_speed;
				if (distXi > 2 || distXi < -2) {
					move_towards_point(obj_diver.x + 300, y, swim_speed);
				} else {
					if (onceJump == false) {
						speed = 0;
						image_xscale = scale;
						onceJump = true;
						alarm[0] = 30;
					}
				}
			} else if (afterGrabbingWait < 1) {
				if (distXj > 2 || distXj < -2) {
					move_towards_point(obj_diver.x+125, y, swim_speed);
				} else {
					swim_speed = default_swim_speed;
					speed = 0;
					image_xscale = scale;
				
					var adjustedAngle = point_direction(obj_crabioli.x, obj_crabioli.y, obj_diver.x, obj_diver.y) - 175;
					
					if (rightArmRotation - adjustedAngle > 10) {
						if ((rightArmRotation - adjustedAngle < 25)) {
							armSprite = spr_crabioli_right_arm_extend;
						}
						rightArmRotation -= 0.5;
					} else if (rightArmRotation - adjustedAngle < -10) {
						if ((rightArmRotation - adjustedAngle > -25)) {
							armSprite = spr_crabioli_right_arm_extend;
						}
						rightArmRotation += 0.5;
					} else {
						if ((rightArmRotation - adjustedAngle < 25)) {
							armSprite = spr_crabioli_right_arm_extend;
						}
						afterGrabbingWait = 50;
					}
				}
			}
		}
		if (afterGrabbingWait >= 1) {
			afterGrabbingWait--;
			if (rightArmRotation - 0 > 10 || rightArmRotation - 0 < -10) {
				rightArmRotation += 2;
			}
			if (afterGrabbingWait < 20 ) {
				armSprite = spr_crabioli_right_arm;
			}
		}
	
	}


	if (!place_meeting(x, y+fallSpeed, obj_collision_parent)) {
		y = y + fallSpeed;
	}

	if (HP <= 0) {
		InFrames = 200; 
	    swim_speed = 0;
		instance_create_layer(x, y, "player_layer", obj_Crab_Claw);
	
		switchMusicTo(m_there_is_definitely_a_crab_in_here, m_victory, false, 0);
		if (!array_contains(global.bosses_beaten, "Crab")) {
			array_push(global.bosses_beaten, "Crab");
		}
		instance_destroy();
	}

	if (InFrames >= 1) {
	 InFrames -= 1;
	}

	if (flashAlpha > 0) {
		flashAlpha -= 0.05;
	}



	if (global.paused) {
		speed = 0;
	} else {
		if (flashAlpha > 0.05) {
			move_towards_point(obj_diver.x, obj_diver.y, -swim_speed);
		} else {
			if (flashAlpha = 0.05) {
		speed = 0;
			}
		}
	}
}