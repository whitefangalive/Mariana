if (sprite_index != -1) {
	draw_self();
}
if (instance_exists(obj_diver)) {
	
	
	if (x - obj_diver.x < threshold && y - obj_diver.y < threshold) {
		speed = 0;
		draw_sprite_ext(spr_jellyfish_glow, 0, x, y, 0.75, 0.75, 0, c_aqua, EaseInQuad(opacity, 0, 1, 1));
		if (once == false) {
			audio_play_sound(sfx_magic, 1, false, global.volume_setting / 1.5, 0, random_range(1.0, 1.1));
			once = true;
		}
		opacity -= rateOfChange;
		
		if (opacity <= 0) {
			instance_destroy();
		}
	} else {
		move_towards_point(obj_diver.x, obj_diver.y, mvSpeed);
	}
}