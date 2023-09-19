draw_self();
if (text_counter >= 6.28) {
	text_counter = 0;
} else {
	text_counter += 0.01;
}
text_opacity = (sin(text_counter)/4)+0.25;
var scale_number = 11.256;

if (room == Room1) {
	
	var x_pos = x + ((obj_diver.x +128)/ scale_number);
	var y_pos = y + ((obj_diver.y +16448)/ scale_number);
	draw_sprite_ext(spr_jellyfish_glow, 0, x_pos, y_pos, 1, 1, 0, c_aqua, text_opacity);
	
	if (instance_exists(obj_dead_diver)) {
		var x_pos_cor = x + ((obj_dead_diver.x +128)/ scale_number);
		var y_pos_cor = y + ((obj_dead_diver.y +16448)/ scale_number);
		draw_sprite_ext(spr_jellyfish_glow, 0, x_pos_cor, y_pos_cor, 0.5, 0.5, 0, c_aqua, text_opacity);
	}
	with (obj_door) {
		array_read(global.roomsWithCorpses);
		if (array_contains(global.roomsWithCorpses, destination) != -1) {
			if (instance_exists(obj_map)) {
				var x_pos_cor = obj_map.x + ((x +128)/ scale_number);
				var y_pos_cor = obj_map.y + ((y +16448)/ scale_number);
				draw_sprite_ext(spr_jellyfish_glow, 0, x_pos_cor, y_pos_cor, 0.5, 0.5, 0, c_aqua, obj_map.text_opacity);
			}
		}
	}
} else {

}