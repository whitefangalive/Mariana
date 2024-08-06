if distance_to_object(obj_diver) < 750 {
age++;
image_xscale = clamp(scale, 0.6, 2);
image_yscale = clamp(scale, 0.6, 2);
scale = age / 5000;

if (age > maxAge && age % 500 == 0) {
	HP = HP - 1;
}


path_speed = swim_speed;
dist_x = obj_diver.x - x;
dist_y = obj_diver.y - y;
// DOCILE BEHAVIOR
	if (obj_diver.attacked_recently >= 1) {
		// Get the distance to the player
		// if right swim left
	if((dist_x < 400 && (dist_x > 0)) && (!place_meeting(x-swim_speed, y, obj_collision_parent))) {

	    x = x - (swim_speed);
		image_xscale = -1 * abs((image_xscale));
	}
	// if left swim right

	if ((dist_x > -400 &&  (dist_x < 0)) && (!place_meeting(x+swim_speed, y, obj_collision_parent))) {

	    x = x + (swim_speed);
		image_xscale = 1 * abs((image_xscale));
	}
	//if below swim up
	if(((dist_y < 400 && (dist_y > 0)) && (!place_meeting(x, y-swim_speed, obj_collision_parent))) && (y > 0)) {
		path_end();

	    y = y - (swim_speed);
	} 
	// if above swim down
	if ((dist_y > -400 && (dist_y < 0)) && (!place_meeting(x, y+swim_speed, obj_collision_parent))) {
			path_end();

	            y = y + (swim_speed);
		} 
	}
	
if (age > 18000 && laidEggs = false) {
	var nearestSand = instance_nearest(x, y, obj_collision_parent);
	if (distance_to_object(nearestSand) > 5) {
		move_towards_point(nearestSand.x, nearestSand.y, swim_speed);
		layingEggsAge = age;
	} else {
		speed = 0;
		if (age - layingEggsAge > 500) {
			for (var i = 0; i < 4; i++;) {
				var guppy = instance_create_layer(x, y, "player_layer", obj_fish_egg);
				guppy.fish = object_get_name(object_index);
				guppy.hue = make_color_rgb(54, 33, 33);
				guppy.x = x + irandom_range(-5, 5);
				guppy.y = y + irandom_range(-2, 8);
			}
			laidEggs = true;
		}
	}
	

} else if (age % 2000 <= 3) {
	
	var seaweed = instance_nearest(x, y-20, obj_seaweed);
	var crab = instance_nearest(x, y, obj_flora_crab);
	if (seaweed > crab) {
		if (distance_to_object(seaweed) > 20) {
			move_towards_point(seaweed.x, seaweed.y-20, swim_speed);

		} else {

			speed = 0;
		}
	} else {
		if (distance_to_object(crab) > 10) {
			move_towards_point(crab.x, crab.y, swim_speed);

		} else {

			speed = 0;
		}
	}
} else if (age % 2100 == 0) {
	speed = 0;

	
} else {

	if (age % switchDirTime == 0) {
		direction = irandom_range(0, 360);;
		speed = swim_speed;
		switchDirTime = irandom_range(150, 350);
	} else if (age % (switchDirTime + 100) == 0) {
		speed = 0;
	}
	
}
//Resart pathing if far away


	if (InFrames >= 1) {
	 InFrames -= 1;
	}
	
	//DEATH -------------------------------------- Sprite input
	if (HP <= 0) {
		InFrames = 200; 
	    swim_speed = 0;
			instance_create_layer(x, y, "player_layer", obj_Fins);
			instance_destroy();
	}


	if (flashAlpha > 0) {
		flashAlpha -= 0.02;
	}

	if (flashAlpha > 0.06) {
		var xway = x - obj_diver.x;
		var yway = y - obj_diver.y;
		if (!place_meeting(x + xway,y + yway, obj_collision_parent)) {
			move_towards_point(obj_diver.x, obj_diver.y, -3);	
		} else {
		speed = 0;
		}
	} else {
		if (flashAlpha = 0.05) {
	speed = 0;
		}
	}
}
