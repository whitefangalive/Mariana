// draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


width = 500;
height = 75;

//center

x = 756 / 2 - 150;
y = 780;
 
//dr menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width*3, height/sprite_height*3, 0, c_white, 1);

	var _c = c_white;
	
	draw_text_color(x+op_border, y+op_border + op_space*menu_level, obj_settings.currentlySaying[menu_level], _c, _c, _c, _c, 1 );
	for (var i = 0; i < menu_level; i++) {
		draw_text_color(x+op_border, y+op_border + op_space*i, obj_settings.currentlySaying[i], _c, _c, _c, _c, 1 );
	}		



