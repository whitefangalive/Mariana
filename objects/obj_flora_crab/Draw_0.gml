

draw_sprite_ext(spr_flora_crab_seaweed_curl, clamp(subimg, 0, 5), x, y, image_xscale, image_yscale, 0, c_white, 1);

draw_self();

if (flashAlpha > 0) {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha)
	
	shader_reset();
}