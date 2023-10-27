draw_sprite_ext(spr_liquid, 0, x, y, image_xscale, image_yscale, rot, color, alpha);
++rot;
alpha -= 0.01;
y += 2;
if (alpha <= 0) {
	instance_destroy();
}