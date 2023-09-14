 // draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);



//center

x = 170;
y = view_get_hport(view_camera[0]) -((sprite_height) + 80);

//dr menu background
if (global.equipped[6] == "Healthometer") {
	draw_sprite_ext(sprite_index, image_index, x, y, (width * head_scale)/(sprite_width * 1.5), height/sprite_height*3, 0, c_white, 1);




	for (var i = 0; i < global.max_player_health; i++) {
		draw_sprite_ext(spr_health, clamp((global.player_health - i), 0, 1),x+op_border + 18 + op_space*i + sprite_get_width(spr_health)*i, y + (sprite_height/2) + 5, head_scale, head_scale, 0, c_white, 1);
	}

}