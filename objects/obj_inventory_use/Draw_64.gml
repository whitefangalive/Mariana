// draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);



//center

x = 200
y = 200
 
//dr menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width*3, height/sprite_height*3, 0, c_white, 1);




for (var i = 0; i < op_length; i++) {
	
	var _c = c_white;
	if pos == i {_c = c_yellow};
  draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1 );
}

//draw item images
if (array_length(global.inventory) > 0) {
	if (sprite_exists((convertTo("spr", global.inventory[obj_inventory.pos])))) {
		draw_sprite_ext(convertTo("spr", global.inventory[obj_inventory.pos]), 0, 350, 330,5, 5, 0, c_white, 1);
	}
}
