if ((distance_to_object(obj_diver) < 20) && global.inventoried == false && global.paused == false) {
 if keyboard_check_pressed(obj_settings.key_select) {
	opened = !opened;
	}
}


if opened == true {

for (var i = 0; i < array_length(container); i++) {
		var randx = irandom_range(-12,12);
		var randy = irandom_range(-12,0);
		instance_create_layer(x+randx, y+randy-10, "player_layer", convertTo("obj", container[i]));
		if i = array_length(container)-1 {
			container = [];
		}
	}
	instance_destroy();
}

if (!global.paused) {
	y = y + grav;
}

// vertical moving collide
if (place_meeting(x,y+grav,obj_collision_parent) || y >= room_height) {
	while ((!place_meeting(x,y+sign(grav),obj_collision_parent)) && (while_counter < 50)) {
	  y = y + sign(grav);
	  while_counter = while_counter + 1;
	 }
	 grav = 0;
}

