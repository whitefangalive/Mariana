draw_self()

if (flashAlpha > 0) {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha)
	
	shader_reset();
}



var me = id;
with (shine) {
	//childOf(-10, -8, 1, 1, 0, me);
	
	x = me.x + ((me.sprite_width / -4));
	y = me.y + ((me.sprite_height / -5));
}