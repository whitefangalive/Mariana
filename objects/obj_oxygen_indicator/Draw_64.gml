if (instance_exists(obj_diver)) {
	draw_sprite_ext(spr_oxygen_indicator, 1, 35, 40,5, 5, 0, c_white, 1);
	draw_sprite_ext(spr_oxygen_bar, 0, 35, 40, global.oxygen, 5, 0, c_white, 1);
}

oxygen_timer -= 1;

if oxygen_timer <= 0 && global.oxygen >= 0.50{
	oxygen_timer = oxygen_time;
	global.oxygen -= 1;
}

if (refilling >= 1) {
	global.oxygen += 0.5;
	if global.oxygen >= 60 {
	refilling = 0;
	}
}




