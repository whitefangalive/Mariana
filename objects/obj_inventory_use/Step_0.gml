// get input
key_w = keyboard_check_pressed(obj_settings.key_up);
key_s = keyboard_check_pressed(obj_settings.key_down);
key_accept = keyboard_check_pressed(obj_settings.key_select);

//storen number of otpions
op_length = array_length(option[menu_level]);


// enable clicking
for(var i = 0; i < array_length(buttons); i++) {
	var object = buttons[i];
	if (object.pressed == true) {
		pos = object.index;
		key_accept = true;
		buttons = [];
		obj_inventory.buttons = [];
		instance_destroy(obj_button);
	}
}
//move through menu
pos += key_s - key_w;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length -1};

//using menu
if (key_accept) {
	buttons = [];
	obj_inventory.buttons = [];
	instance_destroy(obj_button);
audio_play_sound(sfx_select, 2, false);
	var _sml = menu_level;
		
	switch (menu_level) {
	
		//pause menu
		case 0:
			switch(pos) {
			//Use
			case 0:
			// ITEMS USES ----------------------------------------------------------------------------
				if (array_length(global.inventory) > 0) {
								switch(global.inventory[obj_inventory.pos]) {
							//if its an oxygen tank
							case "Air Tank":
								prev_ox = global.oxygen; 
								
								array_delete(global.inventory, obj_inventory.pos, 1)
								instance_create_layer(obj_diver.x, obj_diver.y+20, "behind_diver", oxygen_tank)
								obj_oxygen_indicator.refilling = 1;
							break;
							//secial item        
						    case "Ice": 
								say(["You cannot use this item.", "Also you probably shouldn't keep ice in your pockets for too long"]);
							break;
							case "Water":
								say(["Hey don't look at me, I warned you"]);
							break;
						    //end game
						    case "game": array_delete(global.inventory, obj_inventory.pos, 1);
								game_end(); 
							break;
							case "Soggy Sandwich":
							instance_destroy();
							if global.player_health < global.max_player_health {
								global.player_health += 1;
							}
								 array_delete(global.inventory, obj_inventory.pos, 1) 
							break;
							case "Booster":
								instance_destroy();
								if (global.equipped[1] != 0.0) {
										dropItem(convertTo("obj", string(global.equipped[1])));
								}
								array_set(global.equipped, 1, "Booster");
								array_delete(global.inventory, obj_inventory.pos, 1);
							break;
							case "Luciferin":
								instance_destroy();
								if (global.equipped[2] != 0.0) {
										dropItem(convertTo("obj", string(global.equipped[2])));
								}
								array_set(global.equipped, 2, "Luciferin");
								array_delete(global.inventory, obj_inventory.pos, 1) 
							break;
							case "Pocket Fish":
								say(["Congradulations!", "You are using the pocket fish correctly!"]);
							break;
							case "Holy Fish":
								say(["Look what you've done.", "You really put a fish in the same pocket as your keys.", "You disgust me."]);
							break;
							case "Water Copter":
									instance_destroy();
									if (global.equipped[3] != 0.0) {
											dropItem(convertTo("obj", string(global.equipped[3])));
									}									
									array_set(global.equipped, 3, "Water Copter");
									array_delete(global.inventory, obj_inventory.pos, 1);
							break;
							case "Ancient Map":
									say(["Press " + "Tab" + " to open the map."]);
									instance_destroy();
									if (global.equipped[4] != 0.0) {
											dropItem(convertTo("obj", string(global.equipped[4])));
									}									
									array_set(global.equipped, 4, "Ancient Map");
									array_delete(global.inventory, obj_inventory.pos, 1);
							break;
							case "Mermaid Repellant":
								say([". . .", "Congradulations, now you wont see any Mermaids"]);
								instance_destroy();
								array_delete(global.inventory, obj_inventory.pos, 1);
							break;
							case "Broken Compass":
								say(["Its a broken compass!", "It points where ever you point the compass."]);
							break;
							case "Mystery Key":
								say(splitText("If you try to open the right door with this key in your inventory it will open."));
							break;
							case "Steel Harpoon":
								instance_destroy();
									if (global.equipped[0] != 0.0) {
										dropItem(convertTo("obj", string(global.equipped[0])));
									}
									array_set(global.equipped, 0, "Steel Harpoon");
									array_delete(global.inventory, obj_inventory.pos, 1);
							break;
							case "Crab Claw":
								instance_destroy();
								if (global.equipped[0] != 0.0) {
										dropItem(convertTo("obj", string(global.equipped[0])));
								}
								array_set(global.equipped, 0, "Crab Claw");
								array_delete(global.inventory, obj_inventory.pos, 1);
							break;
							case "Depthometer":
								instance_destroy();
								if (global.equipped[5] != 0.0) {
										dropItem(convertTo("obj", string(global.equipped[5])));
								}
								array_set(global.equipped, 5, "Depthometer");
								array_delete(global.inventory, obj_inventory.pos, 1) 
							break;
							case "Healthometer":
								instance_destroy();
								if (global.equipped[6] != 0.0) {
										dropItem(convertTo("obj", string(global.equipped[6])));
								}
								array_set(global.equipped, 6, "Healthometer");
								array_delete(global.inventory, obj_inventory.pos, 1) 
							break;
							//Default
							default: 
							say(["You cannot use this item."]);
							break;
							}
				}
			global.inventory_menu = false;
			break;
			//Drop
		    case 1:
				dropItem(convertTo("obj", string(global.inventory[obj_inventory.pos])));
				instance_destroy();
			break;
		    //left
		    case 2: 
			if !obj_inventory.pos = 0 {
			array_insert(global.inventory, obj_inventory.pos-1, global.inventory[obj_inventory.pos]) 
			obj_inventory.pos -= 1;
			array_delete(global.inventory, obj_inventory.pos+2, 1);
			}
			break;
			//right
			case 3: 
			if obj_inventory.pos < array_length(global.inventory)-1 {
			array_insert(global.inventory, obj_inventory.pos+2, global.inventory[obj_inventory.pos])
			obj_inventory.pos += 2;
			array_delete(global.inventory, obj_inventory.pos-2, 1);
			obj_inventory.pos -= 1;
			}
			break;
			//back
			case 4: 
			global.inventory_menu = false;
			break;

			 }
		 break;
		}
		
	// set pos back
	if _sml != menu_level {pos = 0};
	
	//correct option length
	op_length = array_length(option[menu_level]);

}

// sound
if (keyboard_check_pressed(obj_settings.key_down)) {
	audio_play_sound(sfx_move_selected, 2 ,false);
	audio_sound_gain(sfx_move_selected, global.volume_setting, 0);
}

if (keyboard_check_pressed(obj_settings.key_up)) {
	audio_play_sound(sfx_move_selected, 2 ,false);
	audio_sound_gain(sfx_move_selected, global.volume_setting, 0);
}