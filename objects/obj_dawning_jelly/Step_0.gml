if y < 0 {
	y = y +1;
}


if bTimer >= 1 {
	bTimer -= 1;
	
	charge_attack = 0;
	if (bTimer == 4) {
		
	}
}

path_speed = swim_speed;
dist_x = obj_diver.x - x;
dist_y = obj_diver.y - y;
// DOCILE BEHAVIOR
	if ((HP < maxHP) || hostile == true) {
		
		// Get the distance to the player
		
		if (distance_to_object(obj_diver) < 5 || hostile == true) { 
				path_end();
				path_ended = "true";
				if (!place_meeting(x,y,obj_diver)) {
					if (bTimer < 1) {
						
						charge_attack = 1;
					}
			} else {
			bTimer = 40;
			randX = irandom_range(-50,50);
			randY = irandom_range(-50,50);
			}
		}
}
	if (InFrames >= 1) {
	 InFrames -= 1;
	}
	
	//DEATH -------------------------------------- Sprite input
	if (HP <= 0) {
	InFrames = 200; 
    swim_speed = 0;
	instance_create_layer(x, y, "player_layer", obj_Luciferin);
	instance_destroy();
	}


if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}

if (flashAlpha > 0.05) {
	move_towards_point(obj_diver.x, obj_diver.y, -3);
} else {
	if (flashAlpha = 0.05) {
speed = 0;
	}
}
