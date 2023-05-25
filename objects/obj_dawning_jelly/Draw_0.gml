draw_sprite_ext(spr_jellyfish_glow, 0, x, y-10, image_xscale * 2.5, image_yscale * 2.5, 0, c_aqua, 1);
draw_self()

if (flashAlpha > 0) {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha)
	
	shader_reset();
}

