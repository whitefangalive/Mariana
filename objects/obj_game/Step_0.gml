///@description pausing. audio pausing. opening inventory. changing room. map.
// if paused
if (text_counter >= 6.28) {
	text_counter = 0;
} else {
	text_counter += 0.01;
}
text_opacity = (sin(text_counter)/4)+0.25;

if (keyboard_check_pressed(obj_settings.key_escape) && timer == 0) {
global.paused = !global.paused;
saveSettings();
timer = 5;
}


if (global.paused == true && run = 0 && !instance_exists(obj_pause_menu)) {
	instance_create_layer(0, 0, "menu_layer", obj_pause_menu);
}

if (global.paused == true) {
	run = 1;
	paused(true);
		audio_pause_sound(m_surface_tension);
		audio_pause_sound(m_aquifer);
		audio_pause_sound(m_with_baited_breath_start);
		audio_pause_sound(m_with_baited_breath_loop);
		audio_pause_sound(m_thorium);
}


	if (global.paused == false) {
		run = 0;
		paused(false);
		audio_resume_all()
	}

if timer >= 1 {timer -= 1}

//open inventory
if (keyboard_check_pressed(obj_settings.key_inventory) && global.paused == false) {
	global.inventoried = !global.inventoried;
}

if (global.inventoried == true) {
	instance_activate_object(obj_inventory);
	if healthOnce == false {
		instance_create_layer(0, 0, "menu_layer", obj_health_bar);
		instance_create_layer(0, 0, "menu_layer", obj_depth_meter);
		healthOnce = true;
	}
}

if (global.inventoried == false) {
	instance_deactivate_object(obj_inventory);
	global.inventory_menu = false;
	healthOnce = false;
	with (obj_health_bar) {
		instance_destroy();
	}
	with (obj_depth_meter) {
		instance_destroy();
	}
}

if (global.inventory_menu == false && object_exists(obj_inventory_use)) {
	with (obj_inventory_use) {
		instance_destroy();
	}
}



//change room ----------------

switch(global.next) { 

	case 0:
		saveGame(string(curLocation) + ".save");
		room_goto_next();
		loadGame(string(destination) + ".save", false);
		obj_settings.previousRoom = curLocation;
		
		global.next += 2;
		break;
	
	case 1:
		show_debug_message(global.previous_x)
		saveGame(string(curLocation) + ".save");
		room_goto_previous();
		loadGame(string(room_previous(room)) + ".save", false);
		obj_settings.previousRoom = curLocation;
		global.next += 2;
		break;
	}

// the full inventory script always to be running on at least one item
itemScript("game");

// map
if (room != room_shop_top) {
	if (global.equipped[4] == "Ancient Map") {
		if (keyboard_check_pressed(obj_settings.key_map) && global.paused == false) {
			mapOpen = !mapOpen;
		}
	}
}

if (mapOpen == true && global.paused == false) {
	instance_activate_object(obj_map);
	if (global.paused == false && (centered == false)) {
	var scale_number = 11.256;
	if (room == Room1) {
		var x_pos = obj_diver.x - ((obj_diver.x +128)/ scale_number);
		var y_pos = obj_diver.y - ((obj_diver.y +16448)/ scale_number);
	} else {
		var x_pos = obj_diver.x - ((obj_diver.x +128 + global.doorInRoomMain[room][1][0])/ scale_number);
		var y_pos = obj_diver.y - ((obj_diver.y +16448 + global.doorInRoomMain[room][1][1])/ scale_number);
	}
	obj_map.x = x_pos;
	obj_map.y = y_pos;
	centered = true;
}
} 
if mapOpen == false {
	instance_deactivate_object(obj_map);
	centered = false;
}

var changeScaleTo = 0;
switch(room) {
	default:
		with (obj_diver) {
			changeScaleTo = distance_to_object(obj_collision_parent) / 250;
		}
	break;
	case Room1_Harpoon2:
		if (!global.paused) {
			if (obj_diver.x > 1600) {
			changeScaleTo = 1.5;
			} else {
				changeScaleTo = 1.2;
			}
		}
	break;
}

scalingIntervalCheck++;
if (scalingIntervalCheck > 40) {
	with (obj_diver) {
		obj_game.prevValue = clamp(changeScaleTo, 1, 1.5);
	}
	scalingIntervalCheck = 0;
}


with (obj_diver) {
	if (debug == false) {
		if (obj_game.prevValue == clamp(changeScaleTo, 1, 1.5)) {
			if ( obj_game.scalingIntervalCheck == 29) {	
				obj_game.doScaling = true;
			}
		} else {
			obj_game.doScaling = false;
		}
	} else {
		obj_game.cameraScale = 20;
	}
	
}

scalingTimer++;
if (scalingTimer > 1) {scalingTimer = 0;}

if (doScaling == true) {
	
	with (obj_diver) {
		if (obj_game.cameraScale < changeScaleTo && obj_game.scalingTimer == 1) {
			obj_game.cameraScale += 0.001;
		} else if (obj_game.cameraScale > changeScaleTo && obj_game.scalingTimer == 1) {
			obj_game.cameraScale -= 0.001;
		}
		obj_game.distanceFromDiver = changeScaleTo;
	}
}


camera_set_view_border(view_camera[0], 1980, 1080);
camera_set_view_size(view_camera[0], 756 * clamp(cameraScale, 1, 1.5), 425 * clamp(cameraScale, 1, 1.5));

