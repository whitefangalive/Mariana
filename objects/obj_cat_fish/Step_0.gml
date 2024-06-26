
age++;
image_xscale = clamp(scale, 1, 2);
image_yscale = clamp(scale, 1, 2);
scale = (age / 30000) + 0.8;

path_speed = swim_speed;
	
if (instance_exists(obj_diver)) {
	if (array_contains(global.pets, obj_Cat_Fish)) {

		dist_x = obj_diver.x - x;
		dist_y = obj_diver.y - y;

		var dist = sqrt(sqr(dist_x) + sqr(dist_y));
		if (obj_diver.attacked_recently >= 1) {
			with (obj_creature_parent) {
				if (HP < maxHP) {
					if (flashAlpha > 0) {
						var nearestCatFish = instance_nearest(x, y, obj_Cat_Fish);
						if (ds_queue_tail(nearestCatFish.targets) != id) {
							ds_queue_enqueue(nearestCatFish.targets, id);
						}
					}
				}
			}	
		}
	
		if (ds_queue_size(targets) != 0) {
			if (instance_exists(ds_queue_head(targets))) {
				move_towards_point(ds_queue_head(targets).x, ds_queue_head(targets).y, swim_speed);
				if (place_meeting(x, y, ds_queue_head(targets))) {
					with (ds_queue_head(targets)) {
						if (flashAlpha == 0) {
							flashAlpha = 1;
							HP -= clamp(scale, 0.8, 2);
						}
					}
					ds_queue_dequeue(targets);
				}
			} else {
				ds_queue_dequeue(targets);
			}
		
		} else {
	
			if (dist > 250) {
				move_towards_point(obj_diver.x, obj_diver.y, swim_speed);
			} else {
				if (age % switchDirTime == 0) {
					direction = irandom_range(0, 360);
					speed = 1;
					switchDirTime = irandom_range(150, 250);
				} else if (age % (switchDirTime + 100) == 0) {
					speed = 0;
				}
			}
		}
	} else {
		if (age > 300) {
			age = 140;
		}
		if (age % switchDirTime == 0) {
			direction = irandom_range(0, 360);
			speed = 1;
			switchDirTime = irandom_range(150, 250);
		} else if (age % (switchDirTime + 100) == 0) {
			speed = 0;
		}
	}
}


