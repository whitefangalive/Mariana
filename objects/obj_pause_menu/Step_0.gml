// get input
draw_set_font(global.font_main);
key_w = keyboard_check_pressed(obj_settings.key_up);
key_s = keyboard_check_pressed(obj_settings.key_down);
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
if key_accept && locked == false {
audio_play_sound(sfx_select, 2, false);
	var _sml = menu_level;
		
	switch (menu_level) {
	
		//pause menu
		case 0:
			switch(pos) {
			//resume game
			case 0: global.paused = false;  break;
			//settings
		    case 1: menu_level = 1;  break;
		    //end game
		    case 2:
				saveGame("savedgame.save");
				game_end(); 
			break;

			 }
		 break;
		 case 1:
			switch (pos) {
				//window settings
			case 0: 
				
			break;
				//brightness
			case 1: 
		
			break;
				//controls
			case 2: 
				menu_level = 2;
			break;
				//volume
			case 3: 
			if global.volume_setting >= 0.10 
				{
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
				changeVolume(m_are_there_any_crabs_in_here)
				changeVolume(m_there_is_definitely_a_crab_in_here);
			option[1, 3] = ("Volume: " + string(global.volume_setting*100)) 
			break;
			//back
			case 4: 
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