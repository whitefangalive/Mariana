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
    if (instance_number(obj_button) < array_length(global.inventory) + array_length(option[menu_level])) {
  var offset = 1;
	var button = instance_create_layer(((x+op_border)/offset), ((y + op_border) + op_space*i)/offset, "menu_layer", obj_button);
	var stringWidth = string_width(option[menu_level, i])
	button.image_xscale = stringWidth/80;
	button.image_yscale = 0.4;
	button.obj = object_index;
	button.menu_level = menu_level;
	button.index = i;
	array_set(buttons, i, button.id);
  }
}

//draw item images
if (array_length(global.inventory) > 0) {
	if (sprite_exists((convertTo("spr", global.inventory[obj_inventory.pos])))) {
		draw_sprite_ext(convertTo("spr", global.inventory[obj_inventory.pos]), 0, 350, 330,5, 5, 0, c_white, 1);
	}
}
