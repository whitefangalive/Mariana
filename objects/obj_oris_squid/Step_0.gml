
if y < 0 {
	y = y +1;
}


if (distance_to_object(obj_diver) < 800) {
tentaclesRight[0].x = x + sprite_width / 3.82;
tentaclesRight[0].y = y + sprite_height / 2;

tentaclesFarRight[0].x = x + sprite_width / 3;
tentaclesFarRight[0].y = y + sprite_height / 2;

tentaclesLeft[0].x = x - sprite_width / 3.50;
tentaclesLeft[0].y = y + sprite_height / 2;

tentaclesFarLeft[0].x = x - sprite_width / 3;
tentaclesFarLeft[0].y = y + sprite_height / 2;

tentaclesBack[0].x = x - sprite_width / 8.2;
tentaclesBack[0].y = y + sprite_height / 2;

middleRight.x = x + sprite_width / 128;
middleRight.y = y + sprite_height / 2;

middleLeft.x = x - sprite_width / 12;
middleLeft.y = y + sprite_height / 2;
	age++;

	image_xscale = clamp(scale, 1, 5.5);
	image_yscale = clamp(scale, 1, 5.5);
	scale = age / 10000;

	if (age > maxAge && age % 500 == 0) {
		HP = HP - 1;
	}

	dist_x = obj_diver.x - x;
	dist_y = obj_diver.y - y;
	// DOCILE BEHAVIOR

	
		//DEATH -------------------------------------- Sprite input
		if (HP <= 0) {
	    swim_speed = 0;
		var myId = id;
		with (obj_oris_squid_tentacle) {
			if (squidId = myId) {
				instance_destroy();
			}
		}
		instance_create_layer(x, y, "player_layer", obj_Oris_Tentacle);
		audio_emitter_free(audio_emitter);
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
		if (flashAlpha = 0.06) {
	speed = 0;
		}
	}
	
	randomTimer++;
	if (randomTimer > maxRandomTimer) {
		randomize();
		randomTimer = 0;
		direction = irandom_range(0,360);
		speed = swim_speed;
		maxRandomTimer = irandom_range(500, 880);
	
	}
} else {
	speed = 0;
}
audio_emitter_position(audio_emitter, x, y, 0);

var rando = irandom_range(1, 2);
if (delta_time % 50 == 0 && rando == 1) {
	audio_play_sound_on(audio_emitter, asset_get_index("sfx_oris_moan" + string(irandom_range(1, 3))), false, 1, global.volume_setting, 0,voicePitch + random_range(-0.10, 0.10));
}