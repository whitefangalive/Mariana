var hasLight = 0;
if (array_length(global.equipped) >= 3) {
	if (global.equipped[2] == "Luciferin") {
		hasLight = 1;
	} else if (global.equipped[2] == "Night Vision Goggles") {
		hasLight = 2;
	}
}

switch(room) {
	case (Room1_thorium):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 1000;
			draw_sprite_ext(darkD, hasLight, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, level);
			draw_sprite_ext(spr_static, image_index, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, level / 10);
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, level);
		}
	break;
	case (Room1_sideA):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 10000;
			draw_sprite_ext(darkD, hasLight, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, clamp(level, 0, 0.25));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	case (Room1_sideB):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 10000;
			draw_sprite_ext(darkD, hasLight, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, clamp(level, 0, 0.25));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	case (Room2):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 2000;
			draw_sprite_ext(darkD, hasLight, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, clamp(level, 0, 10));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	case (Room3):
		var level;
		if (instance_exists(obj_diver)) {
			level = 1;
			draw_sprite_ext(darkD, hasLight, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, clamp(level, 0, 10));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	default:
	
	break;
}


var dark = false;
with (vfx_smoke) {
	if (image_alpha > 0.35) {
		if (place_meeting(x, y, obj_diver)) { 
			dark = true;
		}
	}
}
with (obj_diver) {
	if (!place_meeting(x, y, vfx_smoke)) {
		dark = false;
		if (global.paused) {
			draw_sprite_ext(darkD, 0, x, y, image_xscale * 10, image_yscale * 10, 0, c_gray, 1);
		}
	}
	

}


if (!global.paused) {
	if (dark == true) {
		if (obj_diver.blindness <= 1) {obj_diver.blindness = obj_diver.blindness + 0.1;}
	} else {
		if (obj_diver.blindness > 0) {
			obj_diver.blindness = obj_diver.blindness - 0.1;
		}
	}
	draw_sprite_ext(darkD, 0, obj_diver.x, obj_diver.y, image_xscale * 10, image_yscale * 10, 0, c_gray, clamp(obj_diver.blindness, 0, 0.99));
}


