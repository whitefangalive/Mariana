// draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//get width and hegiht for menu
var _new_w = 0;
for (var i = 0; i < op_length; i++) {
	var _op_w = string_width(option[menu_level, i])
	_new_w = max(_new_w, _op_w);
	}
width = _new_w;
height = (op_border*2 + string_height(option[0, 0]) * (op_length-1));

//center

x = view_get_wport(view_camera[0])/2 - (width*1.5)/2;
y = view_get_hport(view_camera[0])/2 - (height*1.5)/2;
 
//dr menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width*3, height/sprite_height*3, 0, c_white, 1);


for (var i = 0; i < op_length; i++) {
	
	var _c = c_white;
	if pos == i {_c = c_yellow};
  draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1 );
}


