if (global.equipped[1] == "Booster") {
	draw_sprite_ext(spr_Booster, 0, x, y-10, image_xscale *1.5,image_yscale * 1.5, 0, c_gray, 1);
}
if (global.equipped[3] == "Water Copter") {
	draw_sprite_ext(spr_Water_Copter, 0, x, y-40, image_xscale * 2.0,image_yscale * 2.0, 0, c_white, 1);
}



draw_self();



draw_sprite_ext(spr_hurt1, clamp(global.max_player_health - global.player_health, 0, global.max_player_health-1), x, y, image_xscale, image_yscale, image_angle, c_white, 1);
if (array_length(global.equipped) < 3) {
	array_push(global.equipped, 0.0);
}

draw_sprite_ext(convertTo(sprite_get_name(sprite_index), global.equipped[0]), image_index, x, y, image_xscale ,image_yscale, 0, c_white, 1);

if (global.equipped[2] == "Luciferin") {
	draw_sprite_ext(spr_Luciferin_Belt, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}
if (global.equipped[5] == "Depthometer") {
	draw_sprite_ext(spr_Depthometer_Helm, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}
if (global.equipped[6] == "Healthometer") {
	draw_sprite_ext(spr_Healthometer_Helm, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}
if (flashAlpha > 0) {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset();
}


