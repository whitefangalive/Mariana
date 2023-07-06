if (distance_to_object(vfx_blood) < 1200) {
		hostile = true;
		range = 1200;
}
if distance_to_object(obj_diver) < range {
	age++;
	image_xscale = clamp(scale, 0.6, 2);
	image_yscale = clamp(scale, 0.6, 2);
	scale = age / 4000;

	if (age > maxAge && age % 500 == 0) {
		HP = HP - 1;
	}

	if bTimer >= 1 {
		bTimer -= 1;
		move_towards_point(obj_diver.x+randX, obj_diver.y+randY, -swim_speed);
		charge_attack = 0;
	}
	if (HP == maxHP) {
		charge_attack = 0;			
	}
	if ((HP < maxHP) || hostile == true) {
		if (distance_to_object(obj_diver) < 350) {

		dist_x = obj_diver.x - x;
		dist_y = obj_diver.y - y;
		// DOCILE BEHAVIOR
			// Get the distance to the player
			if (distance_to_object(obj_diver) < 149 || hostile == true) { 
					swim_speed = 3;
					path_ended = "true";
					if (!place_meeting(x,y,obj_diver)) {
						if (bTimer < 1) {

							move_towards_point(obj_diver.x, obj_diver.y, swim_speed);
							charge_attack = 1;
						}
				} else {
				bTimer = 40;
				randX = irandom_range(-50,50);
				randY = irandom_range(-50,50);
				}
			} 

		//if (!hostile) {
		//	//Resart pathing if far away
		//	if ((distance_to_object(obj_diver) > 149) && (path_ended == "true")) {
		//	swim_speed = default_swim_speed;
		
		//		path_ended = "false";
		//		charge_attack = 0;
		//	} else {
		//	//reset pathing if haven't attacked in awhile
			if ((HP >= maxHP)) {
				swim_speed = default_swim_speed;
				path_ended = "false";
			}

			if (InFrames >= 1) {
			 InFrames -= 1;
			}
	
			//DEATH -------------------------------------- Sprite input
			if (HP <= 0) {
			InFrames = 200; 
		    swim_speed = 0;
			sprite_index = spr_shark_die;
			}
		} 
	} else {	
			if (age > 12000 && laidEggs = false) {
				var nearestSand = instance_nearest(x, y, obj_collision_parent);
				if (distance_to_object(nearestSand) > 5) {
					move_towards_point(nearestSand.x, nearestSand.y, swim_speed);
					layingEggsAge = age;
				} else {
					speed = 0;
					if (age - layingEggsAge > 700) {
						for (var i = 0; i < 4; i++;) {
							if (irandom_range(1, 2) == 2) {
								var guppy = instance_create_layer(x, y, "player_layer", obj_shark);
								guppy.x = x + irandom_range(-5, 5);
								guppy.y = y + irandom_range(-2, 8);
							}
						}
						laidEggs = true;
					}
				}
			} else if (distance_to_object(obj_fish_egg) < 500) { 
				var eggs = instance_nearest(x, y, obj_fish_egg);
				if (distance_to_object(eggs) > 2) {
					move_towards_point(eggs.x, eggs.y, swim_speed);
				} else {
					speed = 0;
					if (age % 100 == 0) {
						instance_destroy(eggs);
					}
				}
				
				
			} else {
				if (age % switchDirTime == 0) {
					var rand = irandom_range(0, 1);
					var rand2 = irandom_range(-10, 10);
					switch (needsToMoveLeftRight) {
						case 0:
							direction = 180;
						break;
						case 1:
							direction = 0;
						break;
						case -1:
							direction = rand * 180 + rand2;
						break;
					}
					speed = swim_speed;
					switchDirTime = irandom_range(200, 600);
				} 
				
			}
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
	
	//regen
	if (HP < maxHP) {
		if (age % 500 == 0) {
			HP += 1;
		}
	}

} else {
	speed = 0;
}
