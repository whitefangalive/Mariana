var hasLight = 0;
if (array_length(global.equipped) >= 3) {
	if (global.equipped[2] == "Luciferin") {
		hasLight = 1;
	} else if (global.equipped[2] == "Night Vision Goggles") {
		hasLight = 2;
		
	}
}
image_xscale = 3;
image_yscale = 3;
if (instance_exists(obj_diver)) {
	x = obj_diver.x;
	y = obj_diver.y;
}

if (!surface_exists(surf)) {
	surf = surface_create(sprite_width * 3, sprite_height * 3);
}
surface_set_target(surf);
//this is the black
switch(room) {
	case (Room1_thorium1):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 1000;

				draw_sprite_ext(darkD, hasLight, sprite_xoffset, sprite_yoffset, 2.5, 2.5, 0, c_white, level);

			

			draw_sprite_ext(spr_static, image_index, obj_diver.x, obj_diver.y, 3, 3, 0, c_white, level / 10);
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, level);
		}
	break;
	case (Room1_side1):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 8000;
			draw_sprite_ext(darkD, hasLight, sprite_xoffset, sprite_yoffset, 2.5, 2.5, 0, c_white, clamp(level, 0, 0.45));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	case (Room1_side2):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 8000;
			draw_sprite_ext(darkD, hasLight, sprite_xoffset, sprite_yoffset, 2.5, 2.5, 0, c_white, clamp(level, 0, 0.45));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	case (Room2):
		var level;
		if (instance_exists(obj_diver)) {
			level = obj_diver.y / 8000;

			draw_sprite_ext(darkD, hasLight, sprite_xoffset, sprite_yoffset, 2.5, 2.5, 0, c_white, clamp(level, 0, 10));

		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 1));
		}
	break;
	case (Room3):
		var level;
		if (instance_exists(obj_diver)) {
			level = 1;
			draw_sprite_ext(darkD, hasLight, sprite_xoffset, sprite_yoffset, 2.5, 2.5, 0, c_white, clamp(level, 0, 10));
		} else {
			level = 1;
			draw_sprite_ext(darkD, 0, x, y, 500, 500, 0, c_white, clamp(level, 0, 0.5));
		}
	break;
	default:
	
	break;
}
gpu_set_colorwriteenable(0.1, 0.1, 0.1, 1);
gpu_set_blendmode_ext(bm_zero,bm_inv_src_color);
for (var i = 0; i < instance_number(obj_light_parent); i++) {
	var thorium = instance_find(obj_light_parent, i);
	draw_sprite_ext(thorium.sprite_index, thorium.image_index,thorium.x - x + sprite_width/2, thorium.y - y + sprite_height/2, thorium.image_xscale, thorium.image_yscale, thorium.image_angle, c_white, thorium.image_alpha);
}
gpu_set_blendmode(bm_normal);
gpu_set_colorwriteenable(1, 1, 1, 1);

surface_reset_target();
draw_surface(surf, x - sprite_xoffset, y - sprite_yoffset);

gpu_set_colorwriteenable(1, 1, 1, 1);

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


