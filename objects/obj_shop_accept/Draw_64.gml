// draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);



//center

x = 200
y = 600
 
//dr menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width*3, height/sprite_height*3, 0, c_white, 1);




for (var i = 0; i < op_length; i++) {
	
	var _c = c_white;
	if pos == i {_c = c_yellow};
		draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1 );
		if (instance_number(obj_button) < (obj_shop.op_length) + op_length) {
			var offset = 1
			var button = instance_create_layer(((x+op_border)/offset), ((y + op_border) + op_space*i)/offset, "menu_layer", obj_button);
			var stringWidth = string_width(option[menu_level, i])
			button.image_xscale = stringWidth/80;
			button.image_yscale = 0.4;
			button.obj = object_index;
			button.index = i;
			array_push(buttons, button.id);
		}
}

if (menu_level == 0) {
	displayPrice(getPrices(obj_shop.option[0, obj_shop.pos]));
}
		