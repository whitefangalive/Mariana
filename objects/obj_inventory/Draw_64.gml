 // draw options

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);



//center

x = 170;
y = 100;

//dr menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width*3, height/sprite_height*3, 0, c_white, 1);




for (var i = 0; i < op_length; i++) {
	
	var _c = c_white;
	if pos == i {_c = c_yellow};
  if i <= 0 {
	  //draw line 1
		  var full_length = 0;
		  draw_text_color(x+op_border + op_space*0, y+op_border, global.inventory[0], _c, _c, _c, _c, 1 );
	  } 
	  else {
		  //draw other lines
		draw_text_color(x+op_border + op_space + string_width(global.inventory[i-1]) + full_length, y+op_border, global.inventory[i], _c, _c, _c, _c, 1 );
		full_length += (op_space + string_width(global.inventory[i-1]));
	}
}


