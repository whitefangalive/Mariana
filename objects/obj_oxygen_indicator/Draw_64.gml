if (instance_exists(obj_diver)) {
	draw_sprite_ext(spr_oxygen_indicator, 1, 35, 40, curScale, curScale, 0, c_white, 1);
	draw_sprite_ext(spr_oxygen_bar, 0, 35, 40, (global.oxygen / 5) * curScale, curScale, 0, c_white, 1);
}

if (!array_contains(obj_settings.achivements, "Gunked")) {
	oxygen_timer -= 1;
}

if oxygen_timer <= 0 && global.oxygen >= 0 {
	oxygen_timer = oxygen_time;
	global.oxygen -= 1;
}

if (refilling >= 1) {
	global.oxygen += 0.5;
	if global.oxygen >= max_oxygen {
	refilling = 0;
	}
}
if (global.oxygen <= 10) {
	frame += 4;
	if (frame > 360) {
		frame = 0;
	}
	var scale = dcos(frame) + scaled;
	curScale = scale;
} else {
	curScale = 5;
}



