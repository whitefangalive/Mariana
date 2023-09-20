clickDelay = 0;
swim_speed = 4;
hsp = 0;
vsp = 0;
default_move_speed = swim_speed;
input_direction = 0;

text_opacity = 0.5;
text_counter = 0;

function array_contains_at_right(array, element) {
	var len = array_length(array);
	for (var i = len; i < 0; i--) {
		if (array[i] == element) {
			return i;
		}
	}
	return -1;
}