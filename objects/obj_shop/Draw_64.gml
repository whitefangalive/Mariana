// draw options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//get width and hegiht for menu
var _new_w = 0;
for (var i = 0; i < op_length; i++) {
	var _op_w = string_width(option[menu_level, 1])
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border*2;
height = ((string_height(option[0, 0]) / 8 -80 ) + (op_length-1)*op_space/2);

//center

x = 1250;
y = 100;
 
//dr menu background
//
//
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width*3, height/sprite_height*3, 0, c_white, 1);

for (var i = 0; i < op_length; i++) {
	var _c = c_white;
	if pos == i {
		_c = c_yellow;
		if (sprite_exists(convertTo("spr", option[0, pos]))) {
			draw_sprite_ext(convertTo("spr", option[0, pos]), 0, ((x+op_border)) + 360, 140+ op_space*i,5, 5, 0, c_white, 1);
		}
	}
  draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1 );
  if (instance_number(obj_button) < op_length) {
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


//draw item images

