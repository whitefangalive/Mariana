 // draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if (room == Room1) {
	global.oceanDepth = obj_diver.y;
}


//center

x = 1570;
y = view_get_hport(view_camera[0]) -((sprite_height) + 80);

//dr menu background
if (global.equipped[5] == "Depthometer") {
	draw_sprite_ext(sprite_index, image_index, x, y, (width * head_scale)/(sprite_width * 1.5), height/sprite_height*3, 0, c_white, 1);
	var _c = make_color_rgb(227, 92, 8);
	draw_text_color(x+op_border, y+op_border, string_replace_all(string_format((global.oceanDepth+ 48000) / 40, 8, 0), " ", "0"), _c, _c, _c, _c, 1 );
}