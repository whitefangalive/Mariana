draw_self()

if (flashAlpha > 0) {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha)
	
	shader_reset();
}



var me = id;
with (shine) {
	childOf(-10, -8, 1, 1, 0, me, me.image_xscale, me.image_yscale);
}