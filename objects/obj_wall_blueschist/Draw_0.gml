if (!surface_exists(surf)) {
	surf = surface_create(sprite_width, sprite_height);
}
surface_set_target(surf);
draw_sprite(sprite_index, image_index, sprite_xoffset, sprite_yoffset);
gpu_set_colorwriteenable(1, 1, 1, 0);
draw_sprite(spr_rot2, frame,starx - x + sprite_width/2, stary - y+ sprite_height/2);
gpu_set_colorwriteenable(1, 1, 1, 1);
surface_reset_target();
draw_surface(surf, x - sprite_xoffset, y - sprite_yoffset);