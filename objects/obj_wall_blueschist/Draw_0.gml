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

//if (!surface_exists(surf)) {
//	surf = surface_create(sprite_width, sprite_height);
//}
//surface_set_target(surf);
////this is the black
//draw_sprite_ext(darkD, 0, sprite_xoffset, sprite_yoffset, 3, 3, 0, c_white, 1);
//gpu_set_colorwriteenable(0.1, 0.1, 0.1, 1);
//gpu_set_blendmode_ext(bm_zero,bm_inv_src_color);
//draw_sprite_ext(spr_fire_coral, 1,starx - x + sprite_width/2, stary - y+ sprite_height/2, 3, 3, 0, c_white, 1);
//gpu_set_blendmode(bm_normal);
//gpu_set_colorwriteenable(1, 1, 1, 1);
//draw_sprite_ext(spr_fire_coral, 1,starx - x + sprite_width/2, stary - y+ sprite_height/2, 3, 3, 0, c_white, 1);
//surface_reset_target();
//draw_surface(surf, x - sprite_xoffset, y - sprite_yoffset);

//gpu_set_colorwriteenable(1, 1, 1, 1);

