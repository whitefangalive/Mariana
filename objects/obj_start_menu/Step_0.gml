// get input
key_w = keyboard_check_pressed(obj_settings.key_up) || (gamepad_axis_value(0, gp_axislv) < 0);
key_s = keyboard_check_pressed(obj_settings.key_down) || (gamepad_axis_value(0, gp_axislv) > 0);
key_accept = keyboard_check_pressed(obj_settings.key_select);

//storen number of otpions
op_length = array_length(option[menu_level]);

//move through menu
if (locked == false) {
	pos += key_s - key_w;
}
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length -1};

if (locked == true && keyboard_check_pressed(vk_anykey)) {
	currentControls[pos] = keyboard_lastkey;
	locked = false;
	option[2, pos] = controlsArray[pos] + ": " + global._fhinputKeys[currentControls[pos]];
	
	obj_settings.key_up = currentControls[0];
	obj_settings.key_left = currentControls[1];
	obj_settings.key_down = currentControls[2];
	obj_settings.key_right = currentControls[3];
	obj_settings.key_select = currentControls[4];
	obj_settings.key_attack = currentControls[5];
	obj_settings.key_map = currentControls[6];
	obj_settings.key_dash = currentControls[7];
	obj_settings.key_escape = currentControls[8];
	obj_settings.key_inventory = currentControls[9];
}

//using menu
if key_accept {
audio_play_sound(sfx_select, 2, false);
	var _sml = menu_level;
		
	switch (menu_level) {
	
		//pause menu
		case 0:
			switch(pos) {
			//load game
			case 0:
			switchMusicTo(m_watery_grave, sfx_pickup, false, 100);
			loadGame("savedgame.save", true); 
			break;
			//new game
			case 1: 
			switchMusicTo(m_watery_grave, sfx_pickup, false, 100);
			room_goto(Room1);
			for (var i = 0; i < 25; i++) {
				if file_exists(string(i) + ".save")
				{
					file_delete(string(i) + ".save");
				}
			}
			break;
			//settings
		    case 2: menu_level = 1;  break;
		    //end game
		    case 3: game_end(); break;
			 }
		 break;
		case 1:
			switch (pos) {
				//window settings
			case 0: 
				menu_level = 3;
			break;

				//controls
			case 1: 
				menu_level = 2;
			break;
				//volume
			case 2: 
				if global.volume_setting >= 0.10 {
					global.volume_setting -= 0.10;
				} else {
					global.volume_setting = 1.00;
				}
				changeVolume(m_surface_tension);
				changeVolume(m_aquifer);
				changeVolume(m_hull_sale);
				changeVolume(m_hydrogen);
				changeVolume(m_shifting_tide);
				changeVolume(m_thorium);
				changeVolume(m_victory);
				changeVolume(m_watery_grave);
				changeVolume(m_with_baited_breath_loop);
				changeVolume(m_with_baited_breath_start);
				changeVolume(m_are_there_any_crabs_in_here);
				changeVolume(m_there_is_definitely_a_crab_in_here);
				option[1, 3] = ("Volume: " + string(global.volume_setting*100)); 
			break;
			//back
			case 3: 
				menu_level = 0;
			break;
		
			}
		 break;
		 case 2:
			switch (pos) {
				default:
					alarm[0] = 1;
				break;
				case 10:
					menu_level = 1;
				break;
			}
		 break;
		  case 3:
			switch (pos) {
				//fullscreen
				case 0:
					obj_settings.fullscreen = !obj_settings.fullscreen;
					option[3, 0] = "Full Screen: " + toBoolOrBinary(obj_settings.fullscreen);
				break;
				case 1:
					obj_settings.Borderless = !obj_settings.Borderless;
					option[3, 1] = "Borderless Window: " + toBoolOrBinary(obj_settings.Borderless)
				break;
				//Resolution
				case 2:
					if (obj_settings.respos == array_length(resOptions)-1) {
						obj_settings.respos = 0;
					} else {
						obj_settings.respos++;
					}
					
					option[3, 2] = "Resolution: " + resOptions[obj_settings.respos];
					var resSplit = string_split(resOptions[obj_settings.respos], "x")
					obj_settings.Resolution[0] = resSplit[0];
					obj_settings.Resolution[1] = resSplit[1];
				break;
				//text Speed
				case 3:
					if (obj_settings.textpos == array_length(textOptions)-1) {
						obj_settings.textpos = 0;
					} else {
						obj_settings.textpos++;
					}
					option[3, 3] = "Text Speed: " + textOptions[obj_settings.textpos];
					obj_settings.textSpeed = 0.25 * (obj_settings.textpos+1);
				break;
				//blood
				case 4:
					obj_settings.bloodEnable = !obj_settings.bloodEnable;
					option[3, 4] = "Blood: " + toBoolOrBinary(obj_settings.bloodEnable);
				break;
				//apply
				case 5:
					window_set_fullscreen(obj_settings.fullscreen);
					window_set_size(obj_settings.Resolution[0], obj_settings.Resolution[1]);
					obj_settings.blood = obj_settings.bloodEnable;
					window_set_showborder(!obj_settings.Borderless);
					window_center();
				break;
				case 6:
					menu_level = 1;
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